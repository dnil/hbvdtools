package Bvdb;

use 5.006;
use strict;
#use warnings;

use Carp;
use Cwd 'abs_path';
use File::Basename;
use Digest::SHA 'sha512_hex';
use Scalar::Util qw(looks_like_number);
use File::Copy;
use POSIX qw( strftime );
use Log::Log4perl qw(:easy); 
use Exporter;

use vars qw/@ISA @EXPORT/;
@ISA = qw/Exporter/;
@EXPORT = qw/validate_bvdb/;

use constant DB_DIR        => 'DB';

use constant DB_DB         => 'bvdb';
use constant DB_DB_TMP     => 'bvdb_tmp';
use constant DB_CHKSUM     => 'bvdb_chksum';

use constant LOG_FILENAME  => 'bvdb.log';

use constant INDIVIDUAL_COUNT => 'NI';
use constant ENTRIES          => 'ENTRIES';
use constant TAGS             => 'TAGS';

=head1 NAME

Bvdb.pm.  Module for reading and writing Background Variation Database files. 

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

From a script:
    use Bvdb;

    my $bvdb = bvdb->new();
	$bvdb->begin_add_tran(file=>'myfile.vcf', total_samples=>1);
	
    # Add variant information to the database.
	$bvdb->add_variant(CHROM=>"11"", POS=>70802554, REF=>"C", ALT=>"A", allele_count=>1, tags=>"colon_cancer" );
	$bvdb->add_variant(CHROM=>"12"", POS=>90568222, REF=>"C", ALT=>"G", allele_count=>2, tags=>"colon_cancer" );
	$bvdb->add_variant(CHROM=>"X"", POS=>205664, REF=>"GA", ALT=>"G", allele_count=>2, tags=>"colon_cancer" );
	$bvdb->commit_add();

=head1 EXPORT

=head2 validate_bvdb

    About   : Validates the Background Variation Database.
    Usage   : perl -MBvdb -e validate_bvdb DATABASE     # (from the command line)
              validate('DATABASE');                     # (from a script)
    Args    : Database directory that store the database file.

=cut

sub validate_bvdb
{
	my ($db_dir) = @_;
	
	if ( !$db_dir && @ARGV ) { $db_dir = $ARGV[0]; }
	
	#check if it has database file
	if (! -e $db_dir."/".DB_DB) { confess "$db_dir is invalid database directory : No database file.\n";	}	
	#check if it has chksum file
	if (! -e $db_dir."/".DB_CHKSUM) { confess "$db_dir is invalid database directory : No chksum file.\n";	}	
	return 1;
}

=head1 SUBROUTINES/METHODS

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
    
    #define location of the database.
	$$self{db_dir}            = dirname(abs_path($0))."/".DB_DIR unless defined($$self{db_dir});

    $$self{_bvdb_db_file}     = $$self{db_dir}."/".DB_DB;
    $$self{_bvdb_db_tmp_file} = $$self{db_dir}."/".DB_DB_TMP;
    $$self{_bvdb_chksum_file} = $$self{db_dir}."/".DB_CHKSUM;
    
    Log::Log4perl->easy_init( { level => $DEBUG, file => ">>".dirname(abs_path($0))."/".LOG_FILENAME } );
    
    mkdir $$self{db_dir} unless -d $$self{db_dir};
    
    #set default value
    $$self{buffer}         = [];       # buffer stores the lines in the reverse order
    $$self{save_diskspace} = 0 unless defined($$self{save_diskspace}); 
    
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
              $bvdb->commit_add();
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
    my ($self, %args) = @_;
	
	open $$self{tmp_db_fh}, ">", $$self{_bvdb_db_tmp_file} or die $!;

	if (exists($args{total_samples})) {
		print {$$self{tmp_db_fh}} "##".INDIVIDUAL_COUNT."=".$args{total_samples}."\n";
	} else {
		print {$$self{tmp_db_fh}} "##".INDIVIDUAL_COUNT."=".($$self{header}->{total_samples}+$$self{transactions}->{vcf}->{total_samples})."\n";
	}

	if (exists($args{entries})) {
		print {$$self{tmp_db_fh}} "##".ENTRIES."=".join(',', sort @{$args{entries}})."\n";
	} else {
		push (@{$$self{header}->{entries}}, basename($$self{transactions}->{vcf}->{file}));
		print {$$self{tmp_db_fh}} "##".ENTRIES."=".join(',', sort @{$$self{header}->{entries}})."\n";
	}
	
	if (exists($args{tags})) {
		print {$$self{tmp_db_fh}} "##".TAGS."=".join(',', sort @{$args{tags}})."\n";
	} else {
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
		print {$$self{tmp_db_fh}} "##".TAGS."=".join(',', sort @{$$self{header}->{tags}})."\n";
	}
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
	my ($key, $value) = split(/=/, $line);
	
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
	close $my_file;
	
	return $data;
}

=head2 add_variant

    About   : Add another set of varaint information to the database.
    Usage   : my $bvdb = Bvdb->new(); 
              $bvdb->begin_add_tran(file=>'my.vcf', total_samples=>3, tags=>'colon_cancer,lung_cancer');
              $bvdb->add_variant(CHROM=>'x', POS=>154890526, REF=>'ATGTGTGTG', ALT=>'ATGTGTGTGTG', allele_count=>4);
              $bvdb->commit_add();
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
    my $tags;
    
    if ( !$$self{transactions}->{active} ) {$self->throw("'begin_tran' haven't been called.\n");}
    
    my $args_key = (looks_like_number($args{CHROM}))? sprintf("%02d", $args{CHROM}):$args{CHROM};
    $args_key .= "|".sprintf("%012s",$args{POS})."|".$args{ALT};
    
    #if the key in the database is smaller than the key in vcf file
    while ( ($$self{current_variant}->{key}) && 
			($$self{current_variant}->{key} lt $args_key)
		  ) { 
    	print {$$self{tmp_db_fh}} "$$self{current_variant}->{CHROM}\t$$self{current_variant}->{POS}\t$$self{current_variant}->{REF}\t$$self{current_variant}->{ALT}\t$$self{current_variant}->{total}\t$$self{current_variant}->{tags}\n";
		$$self{current_variant} = $self->_next_record();
    }
    
    #if both key are equal
    if ( $$self{current_variant}->{key} eq $args_key) {
    	my $result_tags;
    	my $total = $$self{current_variant}->{total} + $args{allele_count};
    	if (! $$self{transactions}->{vcf}->{tags}) {
			$result_tags = $$self{current_variant}->{tags}; 
    	} else {
	    	if ($$self{current_variant}->{tags} eq ".") {
    			$result_tags = "$$self{transactions}->{vcf}->{tags}=$args{allele_count}";
	    	} else {
		    	my @array = split(/:/, $$self{current_variant}->{tags});
		    	my %hash;
		    	
		    	for (my $i=0; $i<=$#array; $i++) {
		    		my ($tags, $count) = split(/=/, $array[$i]);
		    		if ($tags eq $$self{transactions}->{vcf}->{tags}){
			    		$hash{$tags} = $count+$args{allele_count};
		    		} else {
		    			$hash{$tags} = $count;
		    		} 
		    		push (@tags_array, "$tags=$hash{$tags}");
		    	}
		    	if ((!$hash{$$self{transactions}->{vcf}->{tags}}) && ($$self{transactions}->{vcf}->{tags})) {
		    		push (@tags_array, "$$self{transactions}->{vcf}->{tags}=$args{allele_count}");
		    	}
		    	$result_tags = join(':', sort @tags_array);
	    	}
    	}
    	
	    print {$$self{tmp_db_fh}} "$args{CHROM}\t$args{POS}\t$args{REF}\t$args{ALT}\t$total\t$result_tags\n";
		$$self{current_variant} = $self->_next_record();
		return 1;
    }

    #Either it's the end of file or it's a brand new database or it's just because the key in database is greater than that in vcf file
    #so the variants will be directly added to database.
    $tags = ($$self{transactions}->{vcf}->{tags})? "$$self{transactions}->{vcf}->{tags}=$args{allele_count}" : "."; 
    print {$$self{tmp_db_fh}} "$args{CHROM}\t$args{POS}\t$args{REF}\t$args{ALT}\t$args{allele_count}\t$tags\n";
}

sub _next_record
{
    my ($self) = @_;
    
    my $line = $self->_next_line();
    if ( !defined($line)) {
    	return undef;
    }
    
    chomp($line);
    my @array = split(/\t/, $line);
    my $key   = (looks_like_number($array[0]))? sprintf("%02d", $array[0]):$array[0];
    $key .= "|".sprintf("%012s",$array[1])."|".$array[3];
    return {key=>$key, CHROM=>$array[0], POS=>$array[1], REF=>$array[2], ALT=>$array[3], total=>$array[4], tags=>$array[5]};
}

=head2 commit_add

    About   : Save changes from adding variant information to database.
    Usage   : my $bvdb = Bvdb->new(); 
              $bvdb->begin_add_tran(file=>'my.vcf', total_samples=>3, tags=>'colon_cancer,lung_cancer');
              $bvdb->add_variant(CHROM=>'x', POS=>154890526, REF=>'ATGTGTGTG', ALT=>'ATGTGTGTGTG', allele_count=>4);
              $bvdb->commit_add();
              $bvdb->close();
    Args    : none

=cut

sub commit_add
{
    my ($self) = @_;

    if (!$$self{transactions}->{active}) {
    	$self->warn("No transaction to commit.\n"); 
    	return 0;
    }

    #if the rest of data in the database has "key" greater than that of vcf file, insert them all to database 
    while ( $$self{current_variant}->{POS} ) {
    	print {$$self{tmp_db_fh}} "$$self{current_variant}->{CHROM}\t$$self{current_variant}->{POS}\t$$self{current_variant}->{REF}\t$$self{current_variant}->{ALT}\t$$self{current_variant}->{total}\t$$self{current_variant}->{tags}\n";
    	$$self{current_variant} = $self->_next_record();
    }
    
    close $$self{tmp_db_fh};
    
    if (! $$self{save_diskspace}) {
	    $self->_backup();
    }
    
	#Save change to the real database
    $self->_add_chksum();
   	rename($$self{_bvdb_db_tmp_file}, $$self{_bvdb_db_file}) or $self->warn("Cannot save change to database: $!\n");
   	
	$self->info("Changes have been committed to the database $$self{_bvdb_db_file}\n");

   	$$self{transactions}->{active} = 0;

	return 1;
}

sub _add_chksum
{
    my ($self, $chk_sum) = @_;
    
    my $chk_sum_fh;
	
	open $chk_sum_fh, ">>", $$self{_bvdb_chksum_file} or die $!;

	if (defined($chk_sum)) {
		print $chk_sum_fh $chk_sum."\n";
	} else {
		print $chk_sum_fh sha512_hex($self->_read_file_content(file=>$$self{transactions}->{vcf}->{file}))."\n";
	}
	close $chk_sum_fh;
}

=head2 next_data_hash

    About   : Retrieve next bvdb record and split it into a hash. This is the slowest way to obtain the data.
    Usage   : my $bvdb = Bvdb->new(); 
              $bvdb->load_header(); 
              my $x = $bvdb->next_data_hash();

              # Or having tags to be excluded
              my $x = $vcf->next_data_hash($tags);
              
              print "$x->{CHROM}\t$x->{POS}\t$x->{REF}\t$x->{ALT}\t$x->{fq}\t$x->{total}\n";

    Args    : (Optional) tags to be excluded.

=cut

sub next_data_hash
{
    my ($self, $excluded_tags) = @_;
    
    my $record = $self->_next_record();
    if ( !defined($record)) {
    	$$self{last_line} = undef;
    	return undef;
    }

	$record->{fq} = $record->{total};

    my @db_tags_array = split(/:/, $record->{tags});
    my $tag_found;
    my @excluded_tag_array = split(/,/, $excluded_tags);
    if ( $excluded_tags) {
    	foreach my $db_tags (@db_tags_array) {
    		my ($key, $value) = split(/=/, $db_tags);
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
    $$self{last_line} = $record;
    return $record;
}

=head2 merge_databases

    About   : Merge the given databases with current local database.
    Usage   : my $bvdb = Bvdb->new(); 
              $bvdb->merge_databases(('OTHER_DB_1','OTHER_DB_2']));
              $bvdb->close();
    Args    : db_dirs       .. databases to be merged.
=cut

sub merge_databases
{
    my ($self, @db_dirs) = @_;
    
    my @bvdbs;

	$self->check_databases_duplicated (@db_dirs);

	#Check if the header of local Bvdb has been loaded
	if (! exists($$self{header} )) {
		$self->load_header();
	}
	
	#Load headers from input Bvdbs
	for my $db_dir (@db_dirs) {
		my $bvdb = Bvdb->new(db_dir=>$db_dir);
		$bvdb->load_header();
		push @bvdbs, $bvdb;
	}
	push @bvdbs, $self;
	
	#Merge headers
	my %hash_merged_header;
	my %hash_tags;
	$hash_merged_header{total_samples} = 0;
    for my $bvdb (@bvdbs) {
    	$hash_merged_header{total_samples} += $$bvdb{header}->{total_samples};
    	for my $entry (@{$$bvdb{header}->{entries}}) {
			push @{$hash_merged_header{entries}}, $entry;
    	}
		for my $tag (@{$$bvdb{header}->{tags}}) {
			if (! exists($hash_tags{$tag})) {
				$hash_tags{$tag} = 1;
				push @{$hash_merged_header{tags}}, $tag;
			}
		}
    }
    $self->_init_tmp_db(%hash_merged_header);

	#Set pointer to the first record in each database
    for my $bvdb (@bvdbs) {
    	$bvdb->next_data_hash();
    }

    # Go through all databases simultaneously and output each line at a time
    while (1) {
    	#Get minimum position
    	my $chrom   = undef;
    	my $pos     = undef;
    	my $ref     = undef;
    	my $alt     = undef;
    	my $min_key = undef;
    	my $key; 
    	for my $bvdb (@bvdbs) {
	    	$key = $$bvdb{last_line}->{key};
	    	if (! $key) {next;}
	    	if (! defined($min_key)) {
	    		$chrom   = $$bvdb{last_line}->{CHROM};
	    		$pos     = $$bvdb{last_line}->{POS};
	    		$ref     = $$bvdb{last_line}->{REF};
	    		$alt     = $$bvdb{last_line}->{ALT};
	    		$min_key = $key;
	    		next;  
	    	}
	    	if ($min_key gt $key) {
	    		$chrom   = $$bvdb{last_line}->{CHROM};
	    		$pos     = $$bvdb{last_line}->{POS};
	    		$ref     = $$bvdb{last_line}->{REF};
	    		$alt     = $$bvdb{last_line}->{ALT};
	    		$min_key = $key;
	    		next;  
	    	}
    	}
    	if (! defined($min_key)) { last; }
    	
    	#merge variants frequencies from all databases that have the minimum key
    	my $total_fq  = 0;
		for (keys %hash_tags) {
			delete $hash_tags{$_};
		}
    	for my $bvdb (@bvdbs) {
    		if ($$bvdb{last_line}->{key} ne $min_key) { next; }
    		$total_fq += $$bvdb{last_line}->{total};
    		if ($$bvdb{last_line}->{tags} ne '.') {
	    		my @tags_array = split(/:/, $$bvdb{last_line}->{tags});
	    		for my $tags (@tags_array) {
	    			my ($tag_key, $value) = split(/=/, $tags);
	    			if (exists($hash_tags{$tag_key})) {
	    				$hash_tags{$tag_key} += $value;
	    			} else {
	    				$hash_tags{$tag_key} = $value;
	    			}
	    		}
    		}
    		
    		$bvdb->next_data_hash();
    	}
    	
    	my @tags_array;
    	while (my ($tags_key, $value) = each(%hash_tags)) {
			push @tags_array, $tags_key."=".$value;
		}
    	my $tags_result = join(":", sort @tags_array);
    	if (! $tags_result) {
    		$tags_result = ".";
    	}
    	print {$$self{tmp_db_fh}} "$chrom\t$pos\t$ref\t$alt\t$total_fq\t".$tags_result."\n";
    } # end while(1)
	
	pop @bvdbs;
    close $$self{tmp_db_fh};
    
    if (! $$self{save_diskspace}) {
	    $self->_backup();
    }
	
	#Save change to the real database
    for my $bvdb (@bvdbs) {
		open my $chk_sum_file, "<", $$bvdb{_bvdb_chksum_file} or die $!;
		while( my $line = <$chk_sum_file>)  {
			chomp($line);
		    $self->_add_chksum($line);
		}
		close $chk_sum_file;
    }
   	rename($$self{_bvdb_db_tmp_file}, $$self{_bvdb_db_file}) or $self->warn("Cannot save change to database: $!\n");

	$self->info("Changes have been committed to the database $$self{_bvdb_db_file}\n");
}

=head2 close

    About   : Close connection.
    Usage   : my $bvdb = Bvdb->new(); 
              $bvdb->begin_add_tran(file=>'my.vcf', total_samples=>3, tags=>'colon_cancer,lung_cancer');
              $bvdb->add_variant(CHROM=>'x', POS=>154890526, REF=>'ATGTGTGTG', ALT=>'ATGTGTGTGTG', allele_count=>4);
              $bvdb->commit_add();
              $bvdb->close();
    Args    : none

=cut

sub close
{
    my ($self) = @_;
    
    if ($$self{transactions}->{active}) {
    	$self->warn("Transactions haven't been commited.\n"); 
    	return 0;
    }

	if (defined($$self{db_fh})) {
    	close $$self{db_fh};
	}
}

sub _backup
{
    my ($self) = @_;
    
    #Backup the old chksum if it's existed
    my $backup_chksum_filename = $$self{_bvdb_chksum_file}.strftime("%Y%m%d%H%M%S", localtime);
	if ( -e $$self{_bvdb_chksum_file}) {
		copy($$self{_bvdb_chksum_file}, $backup_chksum_filename) or $self->warn("Cannot backup chksum: $!\n");		
		$self->info("The old chksum has been backup. The backup file is $backup_chksum_filename\n");
	}
    #Backup the old database if it's existed
    my $backup_db_filename = $$self{_bvdb_db_file}.strftime("%Y%m%d%H%M%S", localtime);
	if ( -e $$self{_bvdb_db_file}) {
		copy($$self{_bvdb_db_file}, $backup_db_filename) or $self->warn("Cannot backup database: $!\n");		
		$self->info("The old database has been backup. The backup file is $backup_db_filename\n");
	}
}

=head2 vcf_exist

    About   : Check if content from the given vcf file was already in the database. 
    Usage   : my $bvdb = Bvdb->new();
              if ($bvdb->vcf_exist(file=>'my.vcf')) { 
              	print "The content of this vcf file was already in the database !!!!\n";
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

	open my $chk_sum_file, "<", $$self{_bvdb_chksum_file} or die $!;
	while( my $line = <$chk_sum_file>)  {
		chomp($line);
		if ( $digest_msg eq $line) {
			close $chk_sum_file;
			return 1;
		}
	}
	close $chk_sum_file;

	return 0;
}

=head2 check_databases_duplicated

    About   : Check if the content from the input databases are duplicated with the current local database. 
    Usage   : my $bvdb = Bvdb->new();
              $bvdb->check_database_duplicated(('OTHER_DB_1', 'OTHER_DB_2')); 
    Args    : Location of other databases. 

=cut

sub check_databases_duplicated
{
    my ($self, @db_dirs) = @_;
    my %has_chksum;
    
    for my $db_dir (@db_dirs) {
	    if ( ! -e $db_dir) { $self->throw("$db_dir does not exist!!.\n"); }
    }
    
    #Read list of chksums from local database if exist
    if ( -e $$self{_bvdb_chksum_file}) {
		open my $chk_sum, "<", $$self{_bvdb_chksum_file} or die $!;
		while( my $line = <$chk_sum>)  {
			chomp($line);
			$has_chksum{$line} = 1;
		}
		close $chk_sum;
	}
	
	#Read and check the content from the input databases
    for my $db_dir (@db_dirs) {
		open my $chk_sum, "<", $db_dir."/".DB_CHKSUM or die $!;
		while( my $line = <$chk_sum>)  {
			chomp($line);
			if ( exists($has_chksum{$line})) {
				$self->throw("Some of the content from $db_dir are duplicated with some from other databases.\n"); 
			}
			$has_chksum{$line} = 1;
		}
    }
	
	return 0;
}

sub END
{
	my ($self) = @_;
	
    if ($$self{transactions}->{active}) {
    	$self->warn("'commit_add' haven't been called.\n"); 
    	return 0;
    }
}

=head1 AUTHOR

Jessada Thutkawkorapin, C<< <jessada at kth.se> >>

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Bvdb


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2012 Jessada Thutkawkorapin.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of Bvdb
