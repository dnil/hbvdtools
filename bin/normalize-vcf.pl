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
    $len = common_suffix_length_line($array[3], $array[4]);
    if ($len == 0) {
        print $line;
        next;
    }
    $array[3] = substr($array[3], 0, -$len);
    $array[4] = remove_common_suffix_array($array[4], $len);
    print join("\t", @array);
}
close $vcf;

sub common_suffix_length_line {
    my $str1 = shift;
    my $str2 = shift;
    my $idx  = 0;

    my $common_array_suffix = common_suffix_array($str2);
    my $max_len = (length($str1) < length($common_array_suffix))? length($str1) : length($common_array_suffix);
    while (substr($str1, -($idx+1)) eq substr($common_array_suffix, -($idx+1)) && ($idx+1) < $max_len) {
        $idx++;
    }
    return $idx;
}

sub common_suffix_array {
    my $str = shift;

    my @array = split(/,/, $str);
    my $max_len = 1000;
    foreach my $item (@array) {
        $max_len = (length($item) < $max_len)? length($item) : $max_len;
    }

    my $idx = 0;
    while ($idx < $max_len) {
        my $ref = substr($array[0], -($idx+1));
        my $valid = 1;
        foreach my $item (@array) {
            if (substr($item, -($idx+1)) ne $ref) {
                $valid = 0;
                last;
            }
        }
        if ( !$valid) {
            last;
        }
        $idx++;
    }

    return ($idx == 0)? "" : substr($array[0], -($idx));
}

sub remove_common_suffix_array {
    my $str = shift;
    my $len = shift;

    my @result;
    my @array = split(/,/, $str);
    foreach my $item (@array) {
        push (@result, substr($item, 0, -$len));
    }

    return join(",", @result);;
}

