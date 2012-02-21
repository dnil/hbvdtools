#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

2>&1 $scriptdir/../../../bin/bvd-merge.pl $scriptdir/case_bvd_merge_03_DB_1/ $scriptdir/case_bvd_merge_03_DB_2/ | head -1 > $scriptdir/tmp.txt
echo $scriptdir'/case_bvd_merge_03_DB_2/ is invalid database directory : No chksum file.' > $scriptdir/expected_result
result=$(diff $scriptdir/tmp.txt $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case_bvd_merge_03 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_merge_03 testing. See below "
    echo "$result"
fi

rm $scriptdir/tmp.txt
