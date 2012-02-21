#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_get_06_1.vcf --database $scriptdir/case_bvd_get_06_DB
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_get_06_2.vcf -T colon_cancer --database $scriptdir/case_bvd_get_06_DB
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_get_06_3.vcf -T colon_cancer,lung_cancer --database $scriptdir/case_bvd_get_06_DB
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_get_06_4.vcf -T lung_cancer,colon_cancer --database $scriptdir/case_bvd_get_06_DB
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_get_06_5.vcf -T lung_cancer --database $scriptdir/case_bvd_get_06_DB

$scriptdir/../../../bin/bvd-get.pl -T colon_cancer --database $scriptdir/case_bvd_get_06_DB > $scriptdir/tmp.txt

result=$(diff $scriptdir/tmp.txt $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case_bvd_get_06 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_get_06 testing. See below "
    echo "$result"
fi

rm $scriptdir/tmp.txt
rm $scriptdir/case_bvd_get_06_DB/*
rmdir $scriptdir/case_bvd_get_06_DB/

