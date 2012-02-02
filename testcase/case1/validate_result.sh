#!/bin/bash

vcf_merge_test.sh ./ > ~/development/thesis/out/tmpout1.vcf

grep "^#" ~/development/thesis/out/tmpout1.vcf > ~/development/thesis/out/tmpout2.vcf
grep -v "^#" ~/development/thesis/out/tmpout1.vcf | sort -t $'\t' -k 1,1n -k 2,2n >> ~/development/thesis/out/tmpout2.vcf

test_frequency_count.pl ~/development/thesis/out/tmpout2.vcf > ~/development/thesis/out/tmpout.avdb

result=$(diff ~/development/thesis/out/tmpout.avdb expected_result)

if [ $? -eq 0 ]; then
    echo "All case1 are correct !!! Congratz"
else
    echo "Something went wrong in case1 testing. See below "
    echo "$result"
fi


