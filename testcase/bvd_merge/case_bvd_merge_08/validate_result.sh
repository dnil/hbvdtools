#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -e $scriptdir/../../../bin/DB/bvdb ]
then
	rm $scriptdir/../../../bin/DB/*
	rmdir $scriptdir/../../../bin/DB/
fi

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_08_2.vcf -T colon_cancer
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_08_1.vcf

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_08_4.vcf -d $scriptdir/case_bvd_merge_08_DB_1 -T lung_cancer,colon_cancer
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_08_3.vcf -d $scriptdir/case_bvd_merge_08_DB_1 -T colon_cancer,lung_cancer

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_08_5.vcf -d $scriptdir/case_bvd_merge_08_DB_2 -T lung_cancer

$scriptdir/../../../bin/bvd-merge.pl $scriptdir/case_bvd_merge_08_DB_1 $scriptdir/case_bvd_merge_08_DB_2

result=$(diff $scriptdir/../../../bin/DB/bvdb $scriptdir/expected_bvdb)
if [ $? -eq 0 ]; then
    echo "The first part of case_bvd_merge_08 is correct !!! Congratz"
else
    echo "Something went wrong in the first part of case_bvd_merge_08 testing. See below "
    echo "$result"
fi
result=$(diff $scriptdir/../../../bin/DB/bvdb_chksum $scriptdir/expected_bvdb_chksum)
if [ $? -eq 0 ]; then
    echo "The second part of case_bvd_merge_08 is correct !!! Congratz"
else
    echo "Something went wrong in the second part of case_bvd_merge_08 testing. See below "
    echo "$result"
fi

rm $scriptdir/case_bvd_merge_08_DB_1/*
rmdir $scriptdir/case_bvd_merge_08_DB_1/
rm $scriptdir/case_bvd_merge_08_DB_2/*
rmdir $scriptdir/case_bvd_merge_08_DB_2/
