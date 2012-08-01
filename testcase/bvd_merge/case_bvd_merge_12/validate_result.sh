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

cp $scriptdir/result_template $scriptdir/expected_bvdb
db_id="$( grep "^##DB_ID" $scriptdir/case_bvd_merge_12_DB_local/bvdb )"
sed -i -e "s/^##DB_ID=.*/$db_id/g" $scriptdir/expected_bvdb

result=$(diff $scriptdir/case_bvd_merge_12_DB_local/bvdb $scriptdir/expected_bvdb)
if [ $? -ne 0 ]; then
	echo "Something went wrong in the first part of case_bvd_merge_12 testing. See below "
	echo "$result"
        rm $scriptdir/case_bvd_merge_12_DB_local/*
        rmdir $scriptdir/case_bvd_merge_12_DB_local/
        rm $scriptdir/case_bvd_merge_12_DB_1/*
        rmdir $scriptdir/case_bvd_merge_12_DB_1/
        rm $scriptdir/case_bvd_merge_12_DB_2/*
        rmdir $scriptdir/case_bvd_merge_12_DB_2/
	exit 0
fi
result=$(diff $scriptdir/case_bvd_merge_12_DB_local/bvdb_chksum $scriptdir/expected_bvdb_chksum)
if [ $? -ne 0 ]; then
	echo "Something went wrong in the second part of case_bvd_merge_12 testing. See below "
	echo "$result"
        rm $scriptdir/case_bvd_merge_12_DB_local/*
        rmdir $scriptdir/case_bvd_merge_12_DB_local/
        rm $scriptdir/case_bvd_merge_12_DB_1/*
        rmdir $scriptdir/case_bvd_merge_12_DB_1/
        rm $scriptdir/case_bvd_merge_12_DB_2/*
        rmdir $scriptdir/case_bvd_merge_12_DB_2/
	exit 0
fi
echo "All case_bvd_merge_12 are correct !!! Congratz"

rm $scriptdir/case_bvd_merge_12_DB_local/*
rmdir $scriptdir/case_bvd_merge_12_DB_local/
rm $scriptdir/case_bvd_merge_12_DB_1/*
rmdir $scriptdir/case_bvd_merge_12_DB_1/
rm $scriptdir/case_bvd_merge_12_DB_2/*
rmdir $scriptdir/case_bvd_merge_12_DB_2/

