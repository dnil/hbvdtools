#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm $scriptdir/../../bin/DB/*
rmdir $scriptdir/../../bin/DB/

$scriptdir/../../bin/bvd-add.pl $scriptdir/case1_1.vcf -T colon_cancer,lung_cancer

result=$(diff $scriptdir/../../bin/DB/bvdb $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case1 are correct !!! Congratz"
else
    echo "Something went wrong in case1 testing. See below "
    echo "$result"
fi


