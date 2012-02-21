#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir $scriptdir/case_bvd_add_07_DB
cp $scriptdir/case_bvd_add_07_bvdb $scriptdir/case_bvd_add_07_DB/bvdb
cp $scriptdir/case_bvd_add_07_bvdb_chksum $scriptdir/case_bvd_add_07_DB/bvdb_chksum

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_add_07_2.vcf -T lung_cancer --database $scriptdir/case_bvd_add_07_DB

result=$(diff $scriptdir/case_bvd_add_07_DB/bvdb $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case_bvd_add_07 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_add_07 testing. See below "
    echo "$result"
fi

if [ -e $scriptdir/case_bvd_add_07_DB/bvdb ]
then
	rm $scriptdir/case_bvd_add_07_DB/*
	rmdir $scriptdir/case_bvd_add_07_DB/
fi
