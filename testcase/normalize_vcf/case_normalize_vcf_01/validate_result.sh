#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$scriptdir/../../../bin/normalize-vcf.pl $scriptdir/input.vcf > $scriptdir/out.vcf

result=$(diff $scriptdir/out.vcf $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case_normalize_vcf_01 are correct !!! Congratz"
else
    echo "Something went wrong in case_normalize_vcf_01 testing. See below "
    echo "$result"
fi

rm $scriptdir/out.vcf
