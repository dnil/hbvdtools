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
        "Note: The input vcf file is in plain text format, not in compressed format (e.g. gzip), even though Vcf.pm was used here.\n",
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
    
    #Open vcf file
    my $vcf = Vcf->new(file=>$$opts{file},region=>'1:1000-2000');
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

    my %fq = (
    );
	
    #looping to add varaint info to database.	
    while (my $x=$vcf->next_data_hash()) 
    {
        for (my $col=0; $col<$n_var_samples; $col++) {
            my ($alleles,$seps,$is_phased,$is_empty) = $vcf->parse_haplotype($x, $$vcf{columns}->[$col+(FIX_COL)]);
            if ($#$alleles > 0) {
                if (($$alleles[0] ne $$x{REF}) && ($$alleles[0] ne ".")){
                    if (exists $fq{$$alleles[0]}) {
                        $fq{$$alleles[0]} += 1; 
                    } else {
                        $fq{$$alleles[0]} = 1; 
                    }
                }
                if (($$alleles[1] ne $$x{REF}) && ($$alleles[1] ne ".")){
                    if (exists $fq{$$alleles[1]}) {
                        $fq{$$alleles[1]} += 1; 
                    } else {
                        $fq{$$alleles[1]} = 1; 
                    }
                }
            }
        }
		
        for (sort keys %fq) {
            if ($fq{$_} > 0) {
                $bvdb->add_variant(CHROM=>$$x{CHROM}, POS=>$$x{POS}, REF=>$$x{REF}, ALT=>$_, allele_count=>$fq{$_} );
            }
        }
	
        for (keys %fq) {
            delete $fq{$_};
        }
    }
	
    $bvdb->commit_add();
    $vcf->close();
    $bvdb->close();
}

#Assuming that tags value is stored in $$opts{tags}
sub organize_tags
{
	my @array = split(/,/, $$opts{tags});
	my %seen = ();
	my @unique = grep { ! $seen{ $_ }++ } @array;
	$$opts{tags} = join(',', sort @unique);
}
