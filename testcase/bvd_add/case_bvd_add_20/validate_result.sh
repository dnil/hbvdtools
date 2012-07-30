#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -e $scriptdir/../../../bin/DB/bvdb ]
then
	rm $scriptdir/../../../bin/DB/*
	rmdir $scriptdir/../../../bin/DB/
fi

mkdir $scriptdir/../../../bin/DB/
cp $scriptdir/case_bvd_add_20_bvdb $scriptdir/../../../bin/DB/bvdb
cp $scriptdir/case_bvd_add_20_bvdb_chksum $scriptdir/../../../bin/DB/bvdb_chksum

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_add_20_1.vcf 2> $scriptdir/tmp.txt

result=$(diff $scriptdir/../../../bin/DB/bvdb $scriptdir/expected_result)

if [ $? -ne 0 ]; then
	echo "Something went wrong in case_bvd_add_20 testing. See below "
	echo "$result"
	exit 0
fi

result=$(diff $scriptdir/tmp.txt $scriptdir/expected_warning)

if [ $? -ne 0 ]; then
	echo "Something went wrong in case_bvd_add_20 testing. See below "
	echo "$result"
	exit 0
fi

echo "All case_bvd_add_20 are correct !!! Congratz"

rm $scriptdir/tmp.txt
