#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp $scriptdir/../case6_bvdb $scriptdir/../../../bin/DB/bvdb
cp $scriptdir/../case6_bvdb_chksum $scriptdir/../../../bin/DB/bvdb_chksum

$scriptdir/../../../bin/bvd-get.pl > tmp.txt

result=$(diff tmp.txt $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case6_1 are correct !!! Congratz"
else
    echo "Something went wrong in case6_1 testing. See below "
    echo "$result"
fi

rm tmp.txt

