#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm $scriptdir/../../../bin/second_DB/*
rmdir $scriptdir/../../../bin/second_DB/

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_get_05_1.vcf -d $scriptdir/../../../bin/second_DB
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_get_05_2.vcf -T colon_cancer -d $scriptdir/../../../bin/second_DB
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_get_05_3.vcf -T colon_cancer,lung_cancer -d $scriptdir/../../../bin/second_DB
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_get_05_4.vcf -T lung_cancer,colon_cancer -d $scriptdir/../../../bin/second_DB
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_get_05_5.vcf -T lung_cancer -d $scriptdir/../../../bin/second_DB

$scriptdir/../../../bin/bvd-get.pl -T colon_cancer -d $scriptdir/../../../bin/second_DB > tmp.txt

result=$(diff tmp.txt $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case_bvd_get_05 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_get_05 testing. See below "
    echo "$result"
fi

rm tmp.txt
