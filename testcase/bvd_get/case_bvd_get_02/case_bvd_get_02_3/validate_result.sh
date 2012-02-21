#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp $scriptdir/../case_bvd_get_02_bvdb $scriptdir/../../../../bin/DB/bvdb
cp $scriptdir/../case_bvd_get_02_bvdb_chksum $scriptdir/../../../../bin/DB/bvdb_chksum

$scriptdir/../../../../bin/bvd-get.pl -T colon_cancer,lung_cancer > $scriptdir/tmp.txt

result=$(diff $scriptdir/tmp.txt $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case_bvd_get_02_3 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_get_02_3 testing. See below "
    echo "$result"
fi

rm $scriptdir/tmp.txt

