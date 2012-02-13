#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm $scriptdir/../../bin/DB/*
rmdir $scriptdir/../../bin/DB/

$scriptdir/../../bin/bvd-add.pl $scriptdir/case5_1.vcf
$scriptdir/../../bin/bvd-add.pl $scriptdir/case5_2.vcf -T colon_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case5_3.vcf -T colon_cancer,lung_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case5_4.vcf -T lung_cancer,colon_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case5_5.vcf -T lung_cancer

$scriptdir/../../bin/bvd-get.pl -T colon_cancer > tmp.txt

result=$(diff tmp.txt $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case5 are correct !!! Congratz"
else
    echo "Something went wrong in case5 testing. See below "
    echo "$result"
fi

rm tmp.txt
