#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm $scriptdir/../../../bin/second_DB/*
rmdir $scriptdir/../../../bin/second_DB/

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_add_06_1.vcf -T colon_cancer,lung_cancer -d $scriptdir/../../../bin/second_DB

result=$(diff $scriptdir/../../../bin/second_DB/bvdb $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case_bvd_add_06 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_add_06 testing. See below "
    echo "$result"
fi


