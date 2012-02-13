#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp $scriptdir/case8_bvdb $scriptdir/../../bin/DB/bvdb
cp $scriptdir/case8_bvdb_chksum $scriptdir/../../bin/DB/bvdb_chksum

$scriptdir/../../bin/bvd-get.pl -T lung_cancer,breast_cancer > tmp.txt

result=$(diff tmp.txt $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case8 are correct !!! Congratz"
else
    echo "Something went wrong in case8 testing. See below "
    echo "$result"
fi

rm tmp.txt

