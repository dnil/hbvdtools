#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -e $scriptdir/../../../bin/DB/bvdb ]
then
	rm $scriptdir/../../../bin/DB/*
	rmdir $scriptdir/../../../bin/DB/
fi

mkdir $scriptdir/../../../bin/DB/
cp $scriptdir/case_bvd_add_16_bvdb $scriptdir/../../../bin/DB/bvdb
cp $scriptdir/case_bvd_add_16_bvdb_chksum $scriptdir/../../../bin/DB/bvdb_chksum

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_add_16_2.vcf

cp $scriptdir/result_template $scriptdir/expected_result
db_id="$( grep "^##DB_ID" $scriptdir/../../../bin/DB/bvdb )"
sed -i -e "s/^##DB_ID=.*/$db_id/g" $scriptdir/expected_result

result=$(diff $scriptdir/../../../bin/DB/bvdb $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case_bvd_add_16 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_add_16 testing. See below "
    echo "$result"
fi

rm $scriptdir/expected_result
