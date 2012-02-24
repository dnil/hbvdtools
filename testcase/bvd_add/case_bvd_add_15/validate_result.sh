#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -e $scriptdir/../../../bin/DB/bvdb ]
then
	rm $scriptdir/../../../bin/DB/*
	rmdir $scriptdir/../../../bin/DB/
fi

mkdir $scriptdir/../../../bin/DB/
cp $scriptdir/case_bvd_add_15_bvdb $scriptdir/../../../bin/DB/bvdb
cp $scriptdir/case_bvd_add_15_bvdb_chksum $scriptdir/../../../bin/DB/bvdb_chksum
cp $scriptdir/case_bvd_add_15_bvdb_backup $scriptdir/../../../bin/DB/bvdb20120224145439
cp $scriptdir/case_bvd_add_15_bvdb_chksum_backup $scriptdir/../../../bin/DB/bvdb_chksum20120224145439

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_add_15_2.vcf --savediskspace

result=$(diff $scriptdir/../../../bin/DB/bvdb $scriptdir/expected_result)

if [ $? -ne 0 ]; then
	echo "Something went wrong in case_bvd_add_15 testing. See below "
	echo "$result"
	exit 0
fi

DB_backup_file=$(ls $scriptdir/../../../bin/DB/bvdb2* | sort -r | head -1)
result=$(diff $DB_backup_file  $scriptdir/expected_bvdb_backup)

if [ $? -ne 0 ]; then
	echo "Something went wrong in case_bvd_add_15 testing. See below "
	echo "$result"
	exit 0
fi

chksum_backup_file=$(ls $scriptdir/../../../bin/DB/bvdb_chksum2* | sort -r | head -1)
result=$(diff $chksum_backup_file  $scriptdir/expected_bvdb_chksum_backup)

if [ $? -ne 0 ]; then
	echo "Something went wrong in case_bvd_add_15 testing. See below "
	echo "$result"
	exit 0
fi

echo "All case_bvd_add_15 are correct !!! Congratz"
