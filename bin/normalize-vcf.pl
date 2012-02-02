#!/usr/bin/env perl
#
# Author: jessada@kth.se
#

open $vcf, "<", $ARGV[0] or die $!;
while ($line = <$vcf>) {
	if ( substr($line,0,1) eq "#") {
		print $line;
		next;
	}
	my @array = split(/\t/, $line);
	$len = common_prefix_length($array[3], $array[4]);
	if ($len == 0) {
		print $line;
		next;
	}
	$array[1] += $len;
	$array[3] = substr($array[3], $len);
	$array[4] = substr($array[4], $len);
	print join("\t", @array);
}
close $vcf;

sub common_prefix_length {
	my $str1 = shift;
	my $str2 = shift;
	my $idx  = 1;
	
	my $max_len = (length($str1) < length($str2))? length($str1) : length($str2);
	while (substr($str1, $idx, 1) == substr($str2, $idx, 1) && $idx < $max_len) {
		$idx++;
	}
	return $idx - 1;
}
