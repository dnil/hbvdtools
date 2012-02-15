package Bvdb;

#
# Authors: jessada@kth.se
#

=head1 NAME

Bvdb.pm.  Module for reading and writing Background Variation Database files. 

=head1 SYNOPSIS

From a script:
    use Bvdb;

    my $bvdb = bvdb->new();
	$bvdb->begin_add_tran(file=>'myfile.vcf', total_samples=>1);
	
    # Add variant information to the database.
	$bvdb->add_variant(CHROM=>"11"", POS=>70802554, REF=>"C", ALT=>"A", allele_count=>1, tags=>"colon_cancer" );
	$bvdb->add_variant(CHROM=>"12"", POS=>90568222, REF=>"C", ALT=>"G", allele_count=>2, tags=>"colon_cancer" );
	$bvdb->add_variant(CHROM=>"X"", POS=>205664, REF=>"GA", ALT=>"G", allele_count=>2, tags=>"colon_cancer" );
	$bvdb->commit_tran();

=cut

#use warnings;
use Carp;
use Cwd 'abs_path';
use File::Basename;
use Digest::SHA 'sha512_hex';
use Scalar::Util qw(looks_like_number);
use File::Copy;
use POSIX qw( strftime );
use Log::Log4perl qw(:easy); 

use constant DB_DIR     => 'DB';

use constant DB_DB      => 'bvdb';
use constant DB_DB_TMP  => 'bvdb_tmp';
use constant DB_CHKSUM  => 'bvdb_chksum';

use constant LOG_CONFIG => 'bvdb_log.conf';

use constant TOTAL        => 'total';

use constant INDIVIDUAL_COUNT => 'NI';
use constant ENTRIES          => 'ENTRIES';
use constant TAGS             => 'TAGS';

=head2 new

    About   : Creates new VCF reader/writer. 
    Usage   : my $bvdb = Bvdb->new();
    Args    : db_dir .. (optional) The directory where database has been stored. The default value is <script_path>/DB. 

=cut

sub new
{
    my ($class,@args) = @_;
    my $self = {@args};
    bless $self, ref($class) || $class;
    
    #define location of the database. This can be used for future modification
    if (!$$self{db_dir}) {
	    $$self{db_dir}         = dirname(abs_path($0))."/".DB_DIR;
    }
    $$self{_bvdb_db_file}     = $$self{db_dir}."/".DB_DB;
    $$self{_bvdb_db_tmp_file} = $$self{db_dir}."/".DB_DB_TMP;
    $$self{_bvdb_chksum_file} = $$self{db_dir}."/".DB_CHKSUM;
    
    Log::Log4perl->easy_init( { level => $DEBUG, file => ">>".dirname(abs_path($0))."/bvdb.log" } );
    
    mkdir $$self{db_dir} unless -d $$self{db_dir};
    
    #set default value
    $$self{buffer}   = [];       # buffer stores the lines in the reverse order
    
    $self->info("Connect to database : $$self{_bvdb_db_file}.\n");
    
    return $self;
}

sub info
{
    my ($self,@msg) = @_;
    
    my $logger = Log::Log4perl->get_logger("Bvdb");
    
    $logger->info( @msg );
}

sub throw
{
    my ($self,@msg) = @_;
    
    my $logger = Log::Log4perl->get_logger("Bvdb");
    
    $logger->error( @msg );
    confess @msg,"\n";
}

sub warn
{
    my ($self,@msg) = @_;
    if ( $$self{silent} ) { return; }
    if ( $$self{strict} ) { $self->throw(@msg); }

    my $logger = Log::Log4perl->get_logger("Bvdb");
    
    $logger->warn( @msg );
    warn @msg;
}

=head2 begin_add_tran

    About   : Enable 'add varaint' operation.
    Usage   : my $bvdb = Bvdb->new(); 
              $bvdb->begin_add_tran(file=>'my.vcf', total_samples=>3, tags=>'colon_cancer,lung_cancer');
              $bvdb->add_variant(CHROM=>'x', POS=>154890526, REF=>'ATGTGTGTG', ALT=>'ATGTGTGTGTG', allele_count=>4);
              $bvdb->commit_tran();
    Args    : file          .. vcf file.
              total_samples .. Number of individuals in vcf file.
              tags          .. (optional) Additional information to categorize this set of variants.

=cut

sub begin_add_tran
{
    my ($self, %args) = @_;
    
    if ( !defined($args{file})) { $self->throw("Undefined value passed to begin_add_tran(file=>undef).\n"); }
    if ( ! -e $args{file} ) { $self->throw("invalid file passed to begin_add_tran(file=>undef).\n"); }
    if ( $self->vcf_exist(%args)) { $self->throw("Content of ".$args{file}." was already in the database.\n"); }
    
    if ( !defined($args{total_samples}) ) { $self->throw("Undefined value passed to begin_add_tran(total_samples=>undef).\n"); }

    if ( $$self{transactions}->{active} ) { $self->throw("Currently, there are other active transactions.\n"); }
    
    #Prepare for incoming transactions
    $self->load_header();
    
    $$self{transactions}->{active}               = 1;
    $$self{transactions}->{vcf}->{file}          = $args{file};
    $$self{transactions}->{vcf}->{total_samples} = $args{total_samples};
    if ( defined$args{tags}) { 
    	$$self{transactions}->{vcf}->{tags}      = $args{tags}; 
    }
    
    $self->_init_tmp_db();
    
	#Fetch the first record from the database
	$$self{current_variant} = $self->_next_record();
}

sub _init_tmp_db
{
    my ($self) = @_;
	
	open $$self{tmp_db_fh}, ">", $$self{_bvdb_db_tmp_file} or die $!;

	print {$$self{tmp_db_fh}} "##".INDIVIDUAL_COUNT."=".($$self{header}->{total_samples}+$$self{transactions}->{vcf}->{total_samples})."\n";
	push (@{$$self{header}->{entries}}, basename($$self{transactions}->{vcf}->{file}));
	print {$$self{tmp_db_fh}} "##".ENTRIES."=".join(',', @{$$self{header}->{entries}})."\n";
	if ( $$self{transactions}->{vcf}->{tags} ) {
		my @array = split(/,/, $$self{transactions}->{vcf}->{tags});
		foreach my $input_tag (@array) {
			my $found = 0;
			foreach my $db_tag (@{$$self{header}->{tags}}) {
				if ($input_tag eq $db_tag) {
					$found = 1;
					last;
				}
			}
			if ( !$found) {
				push (@{$$self{header}->{tags}}, $input_tag);
			}
		}
	}
	print {$$self{tmp_db_fh}} "##".TAGS."=".join(',', @{$$self{header}->{tags}})."\n";
}

=head2 load_header

    About   : Load header information.
    Usage   : my $bvdb = Bvdb->new(); 
              $bvdb->load_header(); #The result is stored in in $$self{header}
    Args    : None.

=cut

sub load_header()
{
    my ($self) = @_;
	
	if ( -e $$self{_bvdb_db_file}) {
	    open $$self{db_fh}, "<", $$self{_bvdb_db_file} or die $!;
	    $self->_parse_header();
	} else {
		$$self{db_fh}                   = undef;
	    $$self{header}->{total_samples} = 0;
	    $$self{header}->{entries}       = [];
	    $$self{header}->{tags}          = [];
	}
}

sub _parse_header
{
    my ($self) = @_;
    
    # Looking for the header lines prefixed by ##
    while ($self->_next_header_line()) { ; }
}

sub _next_header_line
{
    my ($self) = @_;
    
    my $line = $self->_next_line();
    if ( !defined $line ) { return undef; }
    if ( substr($line,0,2) ne '##' )
    {
        $self->_unread_line($line);
        return undef;
    }

    return $self->_parse_header_line($line);
}

sub _next_line
{
    my ($self) = @_;
    
    if ( @{$$self{buffer}} ) { return shift(@{$$self{buffer}}); }
    if (!defined($$self{db_fh})) {
    	return undef;
    } else {
    	return readline($$self{db_fh});
    }
}

sub _parse_header_line
{
    my ($self,$line) = @_;

    chomp($line);
	$line =~ s/^##//;
	($key, $value) = split(/=/, $line);
	
	if ( $key eq INDIVIDUAL_COUNT) {
		$$self{header}->{total_samples} = $value;
	} elsif ( $key eq ENTRIES) {
		@{$$self{header}->{entries}} = split(/,/, $value);
	} elsif ( $key eq TAGS) {
		@{$$self{header}->{tags}} = split(/,/, $value);
	}

    return 1;
}

sub _unread_line
{
    my ($self,$line) = @_;
    unshift @{$$self{buffer}}, $line;
}

sub _read_file_content
{
    my ($self, %args) = @_;
    
    open my $my_file, "<", $args{file} or die $!;
	my $data = do { local $/; <$my_file> };
	close $myfile;
	
	return $data;
}

=head2 add_variant

    About   : Add another set of varaint information to the database.
    Usage   : my $bvdb = Bvdb->new(); 
              $bvdb->begin_add_tran(file=>'my.vcf', total_samples=>3, tags=>'colon_cancer,lung_cancer');
              $bvdb->add_variant(CHROM=>'x', POS=>154890526, REF=>'ATGTGTGTG', ALT=>'ATGTGTGTGTG', allele_count=>4);
              $bvdb->commit_tran();
              $bvdb->close();
    Args    : CHROM        .. An identifier from the reference genome.
              POS          .. The reference position, with the 1st base having position 1.
              REF          .. Reference base(s): Each base must be one of A,C,G,T,N. Bases should be in uppercase. 
                              Multiple bases are permitted. The value in the pos field refers to the position of the first base in the string.
              ALT          .. An alternate non-reference allele called on at least one of the samples.
              allele_count .. Number of allele count for this variant.  

=cut

sub add_variant
{
    my ($self, %args) = @_;
    my @tags_array;
    
    if ( !$$self{transactions}->{active} ) {$self->throw("'begin_tran' haven't been called.\n");}
    
    my $args_key = (looks_like_number($args{CHROM}))? sprintf("%02d", $args{CHROM}):$args{CHROM};
    $args_key .= "|".sprintf("%012s",$args{POS})."|".$args{ALT};
    
    #if the key in the database is smaller than the key in vcf file
    while ( ($$self{current_variant}->{key}) && 
			($$self{current_variant}->{key} lt $args_key)
		  ) { 
    	print {$$self{tmp_db_fh}} "$$self{current_variant}->{CHROM}\t$$self{current_variant}->{POS}\t$$self{current_variant}->{REF}\t$$self{current_variant}->{ALT}\t$$self{current_variant}->{tags}\n";
		$$self{current_variant} = $self->_next_record();
    }
    
    #if both key are equal
    if ( $$self{current_variant}->{key} eq $args_key) {
    	my @array = split(/:/, $$self{current_variant}->{tags});
    	my %hash;
    	for (my $i=0; $i<=$#array; $i++) {
    		($tags, $count) = split(/=/, $array[$i]);
    		if (($tags eq TOTAL) || ($tags eq $$self{transactions}->{vcf}->{tags})){
	    		$hash{$tags} = $count+$args{allele_count};
    		} else {
    			$hash{$tags} = $count;
    		} 
    		push (@tags_array, "$tags=$hash{$tags}");
    	}
    	if ((!$hash{$$self{transactions}->{vcf}->{tags}}) && ($$self{transactions}->{vcf}->{tags})) {
    		push (@tags_array, "$$self{transactions}->{vcf}->{tags}=$args{allele_count}");
    	}
    	
	    print {$$self{tmp_db_fh}} "$args{CHROM}\t$args{POS}\t$args{REF}\t$args{ALT}\t".join(':', @tags_array)."\n";
		$$self{current_variant} = $self->_next_record();
		return 1;
    }

    #Either it's the end of file or it's a brand new database or it's just because the key in database is greater than that of vcf file
    #so the variants will be directly added to database.
    push (@tags_array, TOTAL."=$args{allele_count}");
    if ( $$self{transactions}->{vcf}->{tags}) {
	    push (@tags_array, "$$self{transactions}->{vcf}->{tags}=$args{allele_count}")
    }
    print {$$self{tmp_db_fh}} "$args{CHROM}\t$args{POS}\t$args{REF}\t$args{ALT}\t".join(':', @tags_array)."\n";
}

sub _next_record
{
    my ($self) = @_;
    
    $line = $self->_next_line();
    if ( !defined($line)) {
    	return undef;
    }
    
    chomp($line);
    my @array = split(/\t/, $line);
    my $key   = (looks_like_number($array[0]))? sprintf("%02d", $array[0]):$array[0];
    $key .= "|".sprintf("%012s",$array[1])."|".$array[3];
    #if (looks_like_number($args_CHROM)) { 
    return {key=>$key, CHROM=>$array[0], POS=>$array[1], REF=>$array[2], ALT=>$array[3], tags=>$array[4]};
}

=head2 commit_tran

    About   : Save changes to database.
    Usage   : my $bvdb = Bvdb->new(); 
              $bvdb->begin_add_tran(file=>'my.vcf', total_samples=>3, tags=>'colon_cancer,lung_cancer');
              $bvdb->add_variant(CHROM=>'x', POS=>154890526, REF=>'ATGTGTGTG', ALT=>'ATGTGTGTGTG', allele_count=>4);
              $bvdb->commit_tran();
              $bvdb->close();
    Args    : none

=cut

sub commit_tran
{
    my ($self) = @_;

    if (!$$self{transactions}->{active}) {
    	$self->warn("No transaction to commit.\n"); 
    	return 0;
    }

    #if the rest of data in the database has "key" greater than that of vcf file, insert them all to database 
    while ( $$self{current_variant}->{POS} ) {
    	print {$$self{tmp_db_fh}} "$$self{current_variant}->{CHROM}\t$$self{current_variant}->{POS}\t$$self{current_variant}->{REF}\t$$self{current_variant}->{ALT}\t$$self{current_variant}->{tags}\n";
    	$$self{current_variant} = $self->_next_record();
    }
    
    close $$self{tmp_db_fh};
    $self->_add_chksum();
    
    #Backup the old database if it's existed
    my $backup_filename = $$self{_bvdb_db_file}.strftime("%Y%m%d%H%M%S", localtime);
	if ( -e $$self{_bvdb_db_file}) {
		copy($$self{_bvdb_db_file}, $backup_filename) or $self->warn("Cannot backup database: $!\n");		
	}
	
	$self->info("Commit change to database : $$self{_bvdb_db_file}. The backup file is : $backup_filename\n");

	#Save change to the real database
   	rename($$self{_bvdb_db_tmp_file}, $$self{_bvdb_db_file}) or $self->warn("Cannot save change to database: $!\n");
   	
   	$$self{transactions}->{active} = 0;

	return 1;
}

sub _add_chksum
{
    my ($self) = @_;
    
	if ( -e $$self{_bvdb_chksum_file}){
		open $chk_sum, ">>", $$self{_bvdb_chksum_file} or die $!;
	} else {
		open $chk_sum, ">", $$self{_bvdb_chksum_file} or die $!;
	}

	print $chk_sum sha512_hex($self->_read_file_content(file=>$$self{transactions}->{vcf}->{file}))."\n";
	close $chk_sum;
}

=head2 next_data_hash

    About   : Retrieve next bvdb record and split it into a hash. This is the slowest way to obtain the data.
    Usage   : my $bvdb = Bvdb->new(); 
              $bvdb->load_header(); 
              my $x = $bvdb->next_data_hash();

              # Or having tags to be excluded
              my $x = $vcf->next_data_hash($tags);

    Args    : (Optional) tags to be excluded.

=cut

sub next_data_hash
{
    my ($self, $excluded_tags) = @_;
    
    my $record = $self->_next_record();
    if ( !defined($record)) {
    	return undef;
    }

    my @db_tags_array = split(/:/, $record->{tags});
    foreach my $db_tags (@db_tags_array) {
    	($key, $value) = split(/=/, $db_tags);
    	if ($key eq TOTAL) {
    		$record->{fq} = $value;
    	}
    }
    
    my $tag_found;
    @excluded_tag_array = split(/,/, $excluded_tags);
    if ( $excluded_tags) {
    	foreach $db_tags (@db_tags_array) {
    		($key, $value) = split(/=/, $db_tags);
    		my @db_tag_array = split(/,/, $key);
    		$tag_found = 0;
    		foreach my $db_tag (@db_tag_array) {
    			foreach my $excluded_tag (@excluded_tag_array){
    				if ($db_tag eq $excluded_tag) {
    					$record->{fq} -= $value;
    					$tag_found = 1;
    					last;
    				}
    			}
    			if ($tag_found) {
    				last;
    			}
    		}#end foreach my $db_tag (@db_tag_array)
    	}#end foreach $db_tags (@db_tags_array)
    }#end if ( @excluded_tags)
    $record->{fq} /= ($$self{header}->{total_samples}*2);
    return $record;
}

=head2 close

    About   : Close connection.
    Usage   : my $bvdb = Bvdb->new(); 
              $bvdb->begin_add_tran(file=>'my.vcf', total_samples=>3, tags=>'colon_cancer,lung_cancer');
              $bvdb->add_variant(CHROM=>'x', POS=>154890526, REF=>'ATGTGTGTG', ALT=>'ATGTGTGTGTG', allele_count=>4);
              $bvdb->commit_tran();
              $bvdb->close();
    Args    : none

=cut

sub close
{
    my ($self) = @_;
    
	if (defined($$self{db_fh})) {
    	close $$self{db_fh};
	}
}

=head2 vcf_exist

    About   : Check if content from the given vcf file was already in the database. 
    Usage   : my $bvdb = Bvdb->new();
              if ($bvdb->vcf_exist(file=>'my.vcf')) { 
              	print "Duplicated !!!!\n";
              }
    Args    : file    .. Vcf file. 

=cut

sub vcf_exist
{
    my ($self, %args) = @_;
    
    if ( !-e $$self{_bvdb_chksum_file}) {
    	return 0;
    }
    
    my $digest_msg = sha512_hex($self->_read_file_content(%args));

	open my $chk_sum, "<", $$self{_bvdb_chksum_file} or die $!;
	while( my $line = <$chk_sum>)  {
		chomp($line);
		if ( $digest_msg eq $line) {
			close $chk_sum;
			return 1;
		}   
	}
	close $chk_sum;

	return 0;
}

sub END
{
    if ($$self{transactions}->{active}) {
    	$self->warn("'commit_tran' haven't been called.\n"); 
    	return 0;
    }
}

1;
