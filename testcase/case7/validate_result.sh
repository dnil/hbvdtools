#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp $scriptdir/case7_bvdb $scriptdir/../../bin/DB/bvdb
cp $scriptdir/case7_bvdb_chksum $scriptdir/../../bin/DB/bvdb_chksum

$scriptdir/../../bin/bvd-get.pl -T lung_cancer,colon_cancer,lung_cancer > tmp.txt

result=$(diff tmp.txt $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case7 are correct !!! Congratz"
else
    echo "Something went wrong in case7 testing. See below "
    echo "$result"
fi

rm tmp.txt
