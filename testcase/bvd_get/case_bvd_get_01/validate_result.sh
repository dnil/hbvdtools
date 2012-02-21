#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -e $scriptdir/../../../bin/DB/bvdb ]
then
	rm $scriptdir/../../../bin/DB/*
	rmdir $scriptdir/../../../bin/DB/
fi

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_get_01_2.vcf -T colon_cancer
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_get_01_1.vcf
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_get_01_4.vcf -T lung_cancer,colon_cancer
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_get_01_3.vcf -T colon_cancer,lung_cancer
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_get_01_5.vcf -T lung_cancer

$scriptdir/../../../bin/bvd-get.pl -T colon_cancer > $scriptdir/tmp.txt

result=$(diff $scriptdir/tmp.txt $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case_bvd_get_01 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_get_01 testing. See below "
    echo "$result"
fi

rm $scriptdir/tmp.txt
