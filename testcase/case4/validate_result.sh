#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm $scriptdir/../../bin/DB/*
rmdir $scriptdir/../../bin/DB/

$scriptdir/../../bin/bvd-add.pl $scriptdir/case4_1.vcf
$scriptdir/../../bin/bvd-add.pl $scriptdir/case4_2.vcf -T colon_cancer,lung_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case4_3.vcf -T lung_cancer,colon_cancer,colon_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case4_4.vcf -T lung_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case4_5.vcf -T lung_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case4_6.vcf -T prostate_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case4_7.vcf -T prostate_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case4_8.vcf

result=$(diff $scriptdir/../../bin/DB/bvdb $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case4 are correct !!! Congratz"
else
    echo "Something went wrong in case4 testing. See below "
    echo "$result"
fi


