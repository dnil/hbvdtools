#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

2>&1 $scriptdir/../../../bin/bvd-merge.pl $scriptdir/case_bvd_merge_01_DB_1/ $scriptdir/ABC/ | head -1 > $scriptdir/tmp.txt
echo 'Unknown parameter or non-existent database "'$scriptdir'/ABC/". Run -? for help.' > $scriptdir/expected_result

result=$(diff $scriptdir/tmp.txt $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case_bvd_merge_01 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_merge_01 testing. See below "
    echo "$result"
fi

rm $scriptdir/tmp.txt
