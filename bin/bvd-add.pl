#!/usr/bin/env perl
#
# Author: jessada@kth.se
#
use Carp;
use strict;
use Cwd 'abs_path';
use File::Basename;

use Bvdb;
use Vcf;

use constant FIX_COL => 9;

my $opts = parse_params();
add_vcf_to_bvd($opts);

exit;

#--------------------------------

sub error
{
    my (@msg) = @_;
    if ( scalar @msg ) { croak join('',@msg); }
    die
        "About: Add variant frequencies to Background Variation Database, one vcf file at a time.\n",
        "Usage:",
        "   bvd-add.pl [arguments] <vcf-file>\n",
        "\n",
        "   Optional arguments:\n",
        "      -h, -?, --help                  This help message.\n",
        "\n",
        "      Arguments to control database content\n",
        "         --buildver <string>             genome build version (default: hg19)\n",
        "         -d, --database <db_path>        Specific target database. Default is DB\n",
        "         -T, --tags <string>             Additional information to categorize variant from this vcf file, comma separated.\n",
        "\n",
        "      Arguments to control disk usage\n",
        "         -s, --savediskspace             Save disk space, i.e. no backup\n",
        "\n",
        "Note: The input vcf file is in plain text format, not in compressed format (e.g. gzip), even though Vcf.pm is used here.\n",
        "\n";

}

sub parse_params
{
    my $opts = { args=>[$0, @ARGV] };

    while (my $arg=shift(@ARGV))
    {
        if ( $arg eq '--buildver' ) { $$opts{buildver}=shift(@ARGV); next; }
        if ( $arg eq '-d' || $arg eq '--database' ) { $$opts{database}=shift(@ARGV); next; }
        if ( $arg eq '-T' || $arg eq '--tags' ) { $$opts{tags}=shift(@ARGV); next; }
        if ( $arg eq '-s' || $arg eq '--savediskspace' ) { $$opts{save_diskspace}=1; next; }
        if ( $arg eq '-?' || $arg eq '-h' || $arg eq '--help' ) { error(); }
        if ( -e $arg ) { $$opts{file}=$arg; next; }
        error("ERROR : unknown parameter or non-existent file \"$arg\". Run -? for help.\n");
    }
    if ( !exists($$opts{file}) ) { 
        error("ERROR : invalid file name \"$$opts{file}\". Run -? for help.\n");
    }

    return $opts;
}

sub add_vcf_to_bvd
{
    my ($opts) = @_;
	
    organize_tags();
    my $sorted_vcf_file = sort_vcf($$opts{file});

    #Open vcf file
    my $vcf = Vcf->new(file=>$sorted_vcf_file,region=>'1:1000-2000');
    $vcf->parse_header();

    my $n_var_samples = $#{$$vcf{columns}}-(FIX_COL)+1;

    #Init bvdb connection
    my $bvdb = Bvdb->new(db_dir=>$$opts{database}, save_diskspace=>$$opts{save_diskspace}, buildver=>$$opts{buildver});
    $bvdb->load_header();
    my $reference = $vcf->get_header_line(key=>'reference')->[0];
    if ( defined $reference) {
        $bvdb->set_reference($reference->[0]->{value});
    }
    my $contig_table = $vcf->get_header_line(key=>'contig')->[0];
    if ( defined $contig_table) {
        foreach my $key ( keys %$contig_table) {
            $bvdb->set_contig_table(ID=>$contig_table->{$key}->{ID},length=>$contig_table->{$key}->{length});
        }
    }
    $bvdb->begin_add_tran(file=>$$opts{file}, total_samples=>$n_var_samples, tags=>$$opts{tags});

    my %fq           = ();
    my %last_position = ();
    $last_position{CHROM} = undef;
    $last_position{POS}   = undef;
    $last_position{REF}   = undef;
	
    #looping through all variants in a VCF file
    while (my $current_variant=$vcf->next_data_hash())
    {
        #going through all samples in one variant and counting the present of each alternate alleles
        for (my $col=0; $col<$n_var_samples; $col++) {
            my ($alleles,$seps,$is_phased,$is_empty) = $vcf->parse_haplotype($current_variant, $$vcf{columns}->[$col+(FIX_COL)]);
            if ($#$alleles > 0) {
                if (($$alleles[0] ne $$current_variant{REF}) && ($$alleles[0] ne ".")){
                    if (exists $fq{$$alleles[0]}) {
                        $fq{$$alleles[0]} += 1; 
                    } else {
                        $fq{$$alleles[0]} = 1; 
                    }
                }
                if (($$alleles[1] ne $$current_variant{REF}) && ($$alleles[1] ne ".")){
                    if (exists $fq{$$alleles[1]}) {
                        $fq{$$alleles[1]} += 1; 
                    } else {
                        $fq{$$alleles[1]} = 1; 
                    }
                }
            }
        }

        #if current variant is at the same position as the last one
        if ( ($last_position{CHROM} eq $$current_variant{CHROM}) &&
             ($last_position{POS} eq $$current_variant{POS})
           ) {
            #cache this varaint together with the last one
            for my $alt (keys %fq) {
                if ( defined($last_position{REFALT}{$$current_variant{REF}}{$alt})) {
                    $last_position{REFALT}{$$current_variant{REF}}{$alt} += $fq{$alt}
                } else {
                    $last_position{REFALT}{$$current_variant{REF}}{$alt} = $fq{$alt}
                }
            }
        } else {
            if ( defined($last_position{CHROM})) {
                #insert the variants from the last position into the database
                for my $ref (sort keys %{$last_position{REFALT}}) {
                    for my $alt (sort keys %{$last_position{REFALT}{$ref}}) {
                        $bvdb->add_variant(CHROM=>$last_position{CHROM}, POS=>$last_position{POS}, REF=>$ref, ALT=>$alt, allele_count=>$last_position{REFALT}{$ref}{$alt} );
                    }
                }
            }
            #cache this variant
            $last_position{CHROM}  = $$current_variant{CHROM};
            $last_position{POS}    = $$current_variant{POS};
            for my $ref (keys %{$last_position{REFALT}}) {
                delete $last_position{REFALT}{$ref};
            }
            for my $alt (keys %fq) {
                $last_position{REFALT}{$$current_variant{REF}}{$alt} = $fq{$alt};
            }
        }
		
        for my $ref_alt (keys %fq) {
            delete $fq{$ref_alt};
        }
    }

    #insert the "last" variants from the last position into the database
    if ( defined($last_position{CHROM})) {
        for my $ref (sort keys %{$last_position{REFALT}}) {
            for my $alt (sort keys %{$last_position{REFALT}{$ref}}) {
                $bvdb->add_variant(CHROM=>$last_position{CHROM}, POS=>$last_position{POS}, REF=>$ref, ALT=>$alt, allele_count=>$last_position{REFALT}{$ref}{$alt} );
            }
        }
    }
	
    $bvdb->commit_add();
    $vcf->close();
    $bvdb->close();

    if ( -e $sorted_vcf_file) {
        unlink($sorted_vcf_file);
    }
}

#Assuming that tags value is stored in $$opts{tags}
sub organize_tags
{
	my @array = split(/,/, $$opts{tags});
	my %seen = ();
	my @unique = grep { ! $seen{ $_ }++ } @array;
	$$opts{tags} = join(',', sort @unique);
}

sub sort_vcf
{
    my ($vcf_file) = @_;

    my $tmp_file = dirname(abs_path($0))."/tmp_vcf";
    if ( -e $tmp_file) {
        unlink($tmp_file);
    }

    open(my $fh,"< $vcf_file") or error("$vcf_file: $!");
    open(my $sort_fh,"| sort -t'\t' -k1,1V -k2,2n >> $tmp_file");
    open(my $header_fh," >> $tmp_file");

    my $unflushed = select(STDOUT); 
    $| = 1; 

    while (my $line=<$fh>)
    {
        if ( $line=~/^#/ ) { print $header_fh $line; next; }
        print $sort_fh $line;
        last;
    }
    select($unflushed);
    while (my $line=<$fh>)
    {
        print $sort_fh $line;
    }

    $| = 0;
    return $tmp_file;
}
