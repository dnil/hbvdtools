#!/usr/bin/env perl
#
# Author: jessada@kth.se
#

use Carp;
use Vcf;
use Bvdb;

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
        "About: Add variant frequencies to Background Variation Database.\n",
        "Usage: bvd-add [OPTIONS] file.vcf\n",
        "Options:\n",
        "   -h, -?, --help                          This help message.\n",
        "   -T, --tags <string>                     Additional information to categorize variant from this vcf file, comma separated.\n",
        "\n";
}


sub parse_params
{
    my $opts = { args=>[$0, @ARGV] };
    while (my $arg=shift(@ARGV))
    {
        if ( $arg eq '-T' || $arg eq '--tags' ) { $$opts{tags}=shift(@ARGV); next; }
        if ( $arg eq '-?' || $arg eq '-h' || $arg eq '--help' ) { error(); }
        if ( -e $arg ) { $$opts{file}=$arg; next; }
        error("Unknown parameter or non-existent file \"$arg\". Run -? for help.\n");
    }
    if ( !exists($$opts{file}) ) { error() }    return $opts;
}

sub add_vcf_to_bvd
{
    my ($opts) = @_;
    
    #Open vcf file
	my $vcf = Vcf->new(file=>$$opts{file},region=>'1:1000-2000');
	$vcf->parse_header();
	    
	my $n_var_samples = $#{$$vcf{columns}}-(FIX_COL)+1;

	#Init bvdb connection
    $bvdb = Bvdb->new();
	$bvdb->begin_add_tran(file=>$$opts{file}, total_samples=>$n_var_samples, tags=>$$opts{tags});

	my %fq = (
	);
	
	#looping to add varaint info to database.	
	while (my $x=$vcf->next_data_hash()) 
	{
		for (my $col=0; $col<$n_var_samples; $col++) {
			my ($alleles,$seps,$is_phased,$is_empty) = $vcf->parse_haplotype($x, $$vcf{columns}->[$col+(FIX_COL)]);
	    	if ($#$alleles > 0) {
	    		if ($$alleles[0] ne	 $$x{REF}) {
		    		if (exists $fq{$$alleles[0]}) {
	    				$fq{$$alleles[0]} += 1; 
	    			} else {
	    				$fq{$$alleles[0]} = 1; 
	    			}
	    		}
	    		if ($$alleles[1] ne $$x{REF}) {
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
	
	$bvdb->commit_tran();
	$vcf->close();
}
