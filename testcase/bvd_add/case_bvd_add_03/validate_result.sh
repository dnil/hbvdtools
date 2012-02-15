#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm $scriptdir/../../../bin/DB/*
rmdir $scriptdir/../../../bin/DB/

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_add_03_1.vcf --tags colon_cancer,lung_cancer
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_add_03_2.vcf --tags colon_cancer,lung_cancer 
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_add_03_3.vcf --tags  colon_cancer,lung_cancer
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_add_03_4.vcf --tags colon_cancer,lung_cancer
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_add_03_5.vcf --tags colon_cancer,lung_cancer
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_add_03_6.vcf --tags colon_cancer,lung_cancer

result=$(diff $scriptdir/../../../bin/DB/bvdb $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case_bvd_add_03 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_add_03 testing. See below "
    echo "$result"
fi


