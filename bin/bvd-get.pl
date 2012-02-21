#!/usr/bin/env perl
#
# Author: jessada@kth.se
#

use Carp;
use Bvdb;
use strict;

my $opts = parse_params();
bvd_get($opts);

exit;

#--------------------------------

sub error
{
    my (@msg) = @_;
    if ( scalar @msg ) { croak join('',@msg); }
    die
        "About: Export variant frequencies from Background Variation Database into generic input format for ANNOVAR.\n",
        "Usage: bvd-get [OPTIONS]\n",
        "Options:\n",
        "   -h, -?, --help                  This help message.\n",
        "   -d, --database                  Specific target database. Default is DB\n",
        "   -T, --tags <string>             Tags to exclude, comma separated.\n",
        "\n";
}


sub parse_params
{
    my $opts = { args=>[$0, @ARGV] };
    while (my $arg=shift(@ARGV))
    {
        if ( $arg eq '-T' || $arg eq '--tags' ) { $$opts{tags}=shift(@ARGV); next; }
        if ( $arg eq '-d' || $arg eq '--database' ) { $$opts{database}=shift(@ARGV); next; }
        if ( $arg eq '-?' || $arg eq '-h' || $arg eq '--help' ) { error(); }
    }
    return $opts;
}

sub bvd_get
{
	my ($opts) = @_;
	
	validate_tags();

	#Connect to DB
	my $bvdb = Bvdb->new(db_dir=>$$opts{database});
	$bvdb->load_header();
	while (my $variant = $bvdb->next_data_hash($$opts{tags})) {
		if ($variant->{fq}) {
			my $len = $variant->{POS}+length($variant->{REF})-1;
			print "$variant->{CHROM}\t$variant->{POS}\t$len\t$variant->{REF}\t$variant->{ALT}\t$variant->{fq}\n";
		}
	}
	$bvdb-close();
}

#Assuming that tags value is stored in $$opts{tags}
sub validate_tags
{
	my @array = split(/,/, $$opts{tags});
	my %seen = ();
	my @unique = grep { ! $seen{ $_ }++ } @array;
	$$opts{tags} = join(',', sort @unique);
}
