#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp $scriptdir/case2_bvdb $scriptdir/../../bin/DB/bvdb
cp $scriptdir/case2_bvdb_chksum $scriptdir/../../bin/DB/bvdb_chksum

$scriptdir/../../bin/bvd-add.pl $scriptdir/case2_2.vcf -T lung_cancer

result=$(diff $scriptdir/../../bin/DB/bvdb $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case2 are correct !!! Congratz"
else
    echo "Something went wrong in case2 testing. See below "
    echo "$result"
fi


