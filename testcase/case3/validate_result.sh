#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm $scriptdir/../../bin/DB/*
rmdir $scriptdir/../../bin/DB/

$scriptdir/../../bin/bvd-add.pl $scriptdir/case3_1.vcf -T colon_cancer,lung_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case3_2.vcf -T colon_cancer,lung_cancer 
$scriptdir/../../bin/bvd-add.pl $scriptdir/case3_3.vcf -T  colon_cancer,lung_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case3_4.vcf -T colon_cancer,lung_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case3_5.vcf -T colon_cancer,lung_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case3_6.vcf -T colon_cancer,lung_cancer

result=$(diff $scriptdir/../../bin/DB/bvdb $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case3 are correct !!! Congratz"
else
    echo "Something went wrong in case3 testing. See below "
    echo "$result"
fi


