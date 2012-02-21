#!/usr/bin/env perl
#
# Author: jessada@kth.se
#

use Carp;
use Cwd 'abs_path';
use File::Basename;

use lib dirname(abs_path($0))."/lib";
use Bvdb;

my $opts = parse_params();
bvd_merge($opts);

exit;

#--------------------------------

sub error
{
    my (@msg) = @_;
    if ( scalar @msg ) { croak join('',@msg); }
    die
        "About: Merge the given databases with local database.\n",
        "Usage: bvd-merge [OPTIONS] DB1/ DB2/\n",
        "Options:\n",
        "   -h, -?, --help                  This help message.\n",
        "   -d, --database                  Specific target database. Default is DB\n",
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
        if ( -e $arg ) { push @{$$opts{db_dirs}},$arg; next; }
        error("Unknown parameter or non-existent database \"$arg\". Run -? for help.\n");
    }
    if ( !exists($$opts{db_dirs}) ) { error() }    return $opts;
}

sub bvd_merge
{
	my ($opts) = @_;
	
	for my $db_dir (@{$$opts{db_dirs}}) {
		validate_bvdb($db_dir);
	}
	
	my $bvdb = Bvdb->new(db_dir=>$$opts{database});
	$bvdb->merge_databases(@{$$opts{db_dirs}});
	$bvdb->close();
}