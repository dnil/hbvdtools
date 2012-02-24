#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -e $scriptdir/../../../bin/DB/bvdb ]
then
	rm $scriptdir/../../../bin/DB/*
	rmdir $scriptdir/../../../bin/DB/
fi

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_11_4.vcf -d $scriptdir/case_bvd_merge_11_DB_2 -T lung_cancer,colon_cancer
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_11_5.vcf -d $scriptdir/case_bvd_merge_11_DB_2 -T lung_cancer

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_11_3.vcf -d $scriptdir/case_bvd_merge_11_DB_1 -T colon_cancer,lung_cancer
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_11_1.vcf -d $scriptdir/case_bvd_merge_11_DB_1
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_11_2.vcf -T colon_cancer -d $scriptdir/case_bvd_merge_11_DB_1

$scriptdir/../../../bin/bvd-merge.pl $scriptdir/case_bvd_merge_11_DB_2 $scriptdir/case_bvd_merge_11_DB_1

result=$(diff $scriptdir/../../../bin/DB/bvdb $scriptdir/expected_bvdb)
if [ $? -ne 0 ]; then
	echo "Something went wrong in the first part of case_bvd_merge_11 testing. See below "
	echo "$result"
	exit 0
fi
result=$(diff $scriptdir/../../../bin/DB/bvdb_chksum $scriptdir/expected_bvdb_chksum)
if [ $? -ne 0 ]; then
	echo "Something went wrong in the second part of case_bvd_merge_11 testing. See below "
	echo "$result"
	exit 0
fi
echo "All case_bvd_merge_11 are correct !!! Congratz"

rm $scriptdir/case_bvd_merge_11_DB_1/*
rmdir $scriptdir/case_bvd_merge_11_DB_1/
rm $scriptdir/case_bvd_merge_11_DB_2/*
rmdir $scriptdir/case_bvd_merge_11_DB_2/

