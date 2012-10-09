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

use constant AVDB_FORMAT => 'AVDB';
use constant VCF_FORMAT  => 'VCF';

my $opts = parse_params();
bvd_get($opts);

exit;

#--------------------------------

sub error
{
    my (@msg) = @_;
    if ( scalar @msg ) { croak join('',@msg); }
    die
        "About: Export variant frequencies from Background Variation Database, default in ANNOVAR generic format.\n",
        "Usage:",
        "   bvd-get.pl [OPTIONS]\n",
        "\n",
        "   Optional arguments:\n",
        "      -h, -?, --help                  This help message.\n",
        "\n",
        "      Arguments to control database content\n",
        "         --buildver <string>             genome build version (default: hg19)\n",
        "         -d, --database <db_path>        Specific target database. Default is 'DB'\n",
        "         -T, --tags <string>             Tags to exclude, comma separated.\n",
        "\n",
        "      Arguments to control output format\n",
        "         --avdb                          Output in ANNOVAR generic format (default).\n",
        "         --vcf                           Output in VCF format.\n",
        "\n",
}


sub parse_params
{
    my $opts = { args=>[$0, @ARGV] };
    while (my $arg=shift(@ARGV))
    {
        if ( $arg eq '--buildver' ) { $$opts{buildver}=shift(@ARGV); next; }
        if ( $arg eq '-T' || $arg eq '--tags' ) { $$opts{tags}=shift(@ARGV); next; }
        if ( $arg eq '-d' || $arg eq '--database' ) { $$opts{database}=shift(@ARGV); next; }
        if ( $arg eq '--avdb' ) { $$opts{output_format}=AVDB_FORMAT; next; }
        if ( $arg eq '--vcf' ) { $$opts{output_format}=VCF_FORMAT; next; }
        if ( $arg eq '-?' || $arg eq '-h' || $arg eq '--help' ) { error(); }
        error("Unknown parameter or non-existent file \"$arg\". Run -? for help.\n");
    }
    $$opts{output_format} = AVDB_FORMAT unless exists($$opts{output_format});
    #$$opts{buildver}      =  Bvdb::get_default_buildver() unless defined($$opts{buildver});
    #if ( ! Bvdb::valid_buildver($$opts{buildver})) {
    #    error("ERROR : invalid buildver \"$$opts{buildver}\". Run -? for help.\n");
    #}
    return $opts;
}

sub bvd_get
{
    my ($opts) = @_;
	
    organize_tags();

    if ( $$opts{output_format} eq AVDB_FORMAT  ) {
        output_avdb();
    }
    elsif ( $$opts{output_format} eq VCF_FORMAT  ) {
        output_vcf();
    }
    else {
        error("Unknown format. Run -? for help.\n");
    }
}

sub output_avdb
{
    #Connect to DB
    my $bvdb = Bvdb->new(db_dir=>$$opts{database}, buildver=>$$opts{buildver});
    $bvdb->load_header();
    if (! defined($$bvdb{db_fh})) {
        error("ERROR: Database not found !!!!!. This may be caused by wrong database location or wrong build version. Run -? for help.\n");
    } 

    my $ret = check_invalid_input_tags(input_tags=> $$opts{tags}, db_tags => \@{$$bvdb{header}->{tags}});
    if ($ret) {
        error("ERROR: tag '$ret' is not in the database. Is it a typo?. Run -? for help.\n");
    } 

    #Generate avdb output
    while (my $variant = $bvdb->next_data_hash($$opts{tags})) {
	if (($variant->{fq}) && ($variant->{fq} != 0)) {
	    my $len = $variant->{POS}+length($variant->{REF})-1;
	    print "$variant->{CHROM}\t$variant->{POS}\t$len\t$variant->{REF}\t$variant->{ALT}\t$variant->{fq}\n";
	}
    }
    $bvdb->close();
}

sub output_vcf
{
    #Connect to DB
    my $bvdb = Bvdb->new(db_dir=>$$opts{database}, buildver=>$$opts{buildver});
    $bvdb->load_header();

    if (! defined($$bvdb{db_fh})) {
        error("ERROR: Database not found !!!!!. This may be caused by wrong database location or wrong build version. Run -? for help.\n");
    } 
    
    my $ret = check_invalid_input_tags(input_tags=> $$opts{tags}, db_tags => \@{$$bvdb{header}->{tags}});
    if ($ret) {
        error("ERROR: tag '$ret' is not in the database. Is it a typo?. Run -? for help.\n");
    } 

    #Generate VCF output
    my $vcf_out = Vcf->new();

    my @cols;
    $vcf_out->add_columns(@cols);

    foreach my $key (sort keys %{$$bvdb{header}->{contig}}) {
        $vcf_out->add_header_line({key=>'contig',ID=>$key,length=>$$bvdb{header}->{contig}->{$key}});
    }

    if ($$bvdb{header}->{reference}) {
	$vcf_out->add_header_line({key=>'reference',value=>$$bvdb{header}->{reference}});
    } 
    print $vcf_out->format_header();

    while (my $variant = $bvdb->next_data_hash($$opts{tags})) {
	if ($variant->{fq}) {
	    my %out;
	    my %info;

	    my $len = $variant->{POS}+length($variant->{REF})-1;
	    $out{CHROM} = $variant->{CHROM};
	    $out{POS}   = $variant->{POS};
	    $out{ID}    = '.';
	    $out{REF}   = $variant->{REF};
	    $out{QUAL}  = '.';
	    push @{$out{ALT}}, $variant->{ALT};
	    $info{BVDMAF} = $variant->{fq};
	    $out{INFO} = { %info }; 
	    print $vcf_out->format_line(\%out);
	}
    }
    $bvdb->close();
}

sub check_invalid_input_tags
{
    my (%args) = @_;

    my $invalid_tag;
    my @input_tag_array = split(/,/, $args{input_tags});

    foreach my $input_tag (@input_tag_array) {
	my $valid = 0;
	foreach my $db_tag (@{$args{db_tags}}) {
	    if ($db_tag eq $input_tag) {
		$valid = 1;
		last;
	    }
	}
	if ( ! $valid) {
	    return $input_tag;
	}
    }
    return;
}

sub organize_tags
{
    #Assuming that tags value is stored in $$opts{tags}
    my @array = split(/,/, $$opts{tags});
    my %seen = ();
    my @unique = grep { ! $seen{ $_ }++ } @array;
    $$opts{tags} = join(',', sort @unique);
}

