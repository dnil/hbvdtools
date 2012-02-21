#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -e $scriptdir/../../../bin/DB/bvdb ]
then
	rm $scriptdir/../../../bin/DB/*
	rmdir $scriptdir/../../../bin/DB/
fi

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_12_1.vcf -d $scriptdir/case_bvd_merge_12_DB_1
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_12_3.vcf -d $scriptdir/case_bvd_merge_12_DB_1 -T colon_cancer,lung_cancer
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_12_2.vcf -T colon_cancer -d $scriptdir/case_bvd_merge_12_DB_1

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_12_5.vcf -d $scriptdir/case_bvd_merge_12_DB_2 -T lung_cancer
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_12_4.vcf -d $scriptdir/case_bvd_merge_12_DB_2 -T lung_cancer,colon_cancer

$scriptdir/../../../bin/bvd-merge.pl $scriptdir/case_bvd_merge_12_DB_1 -d $scriptdir/case_bvd_merge_12_DB_local $scriptdir/case_bvd_merge_12_DB_2

result=$(diff $scriptdir/case_bvd_merge_12_DB_local/bvdb $scriptdir/expected_bvdb)
if [ $? -eq 0 ]; then
    echo "The first part of case_bvd_merge_12 is correct !!! Congratz"
else
    echo "Something went wrong in the first part of case_bvd_merge_12 testing. See below "
    echo "$result"
fi
result=$(diff $scriptdir/case_bvd_merge_12_DB_local/bvdb_chksum $scriptdir/expected_bvdb_chksum)
if [ $? -eq 0 ]; then
    echo "The second part of case_bvd_merge_12 is correct !!! Congratz"
else
    echo "Something went wrong in the second part of case_bvd_merge_12 testing. See below "
    echo "$result"
fi

rm $scriptdir/case_bvd_merge_12_DB_local/*
rmdir $scriptdir/case_bvd_merge_12_DB_local/
rm $scriptdir/case_bvd_merge_12_DB_1/*
rmdir $scriptdir/case_bvd_merge_12_DB_1/
rm $scriptdir/case_bvd_merge_12_DB_2/*
rmdir $scriptdir/case_bvd_merge_12_DB_2/
