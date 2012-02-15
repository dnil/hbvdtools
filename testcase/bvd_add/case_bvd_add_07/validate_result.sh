#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp $scriptdir/case_bvd_add_07_bvdb $scriptdir/../../../bin/second_DB/bvdb
cp $scriptdir/case_bvd_add_07_bvdb_chksum $scriptdir/../../../bin/second_DB/bvdb_chksum

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_add_07_2.vcf -T lung_cancer --database $scriptdir/../../../bin/second_DB

result=$(diff $scriptdir/../../../bin/second_DB/bvdb $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case_bvd_add_07 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_add_07 testing. See below "
    echo "$result"
fi


