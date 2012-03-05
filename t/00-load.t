#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Bvdb' ) || print "Bail out!\n";
}

diag( "Testing Bvdb $Bvdb::VERSION, Perl $], $^X" );
