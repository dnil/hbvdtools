#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export PERL5LIB=$scriptdir"/../../../bin/lib"
2>&1 perl -MBvdb -e validate_bvdb $scriptdir/case_bvd_merge_04_DB_1/ | head -1 > $scriptdir/tmp.txt
echo $scriptdir'/case_bvd_merge_04_DB_1/ is invalid database directory : No database file.' > $scriptdir/expected_result
result=$(diff $scriptdir/tmp.txt $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case_bvd_merge_04 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_merge_04 testing. See below "
    echo "$result"
fi

rm $scriptdir/expected_result
rm $scriptdir/tmp.txt
