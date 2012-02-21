#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_09_1.vcf -d $scriptdir/case_bvd_merge_09_DB_local
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_09_2.vcf -d $scriptdir/case_bvd_merge_09_DB_local

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_09_3.vcf -d $scriptdir/case_bvd_merge_09_DB_1
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_09_4.vcf -d $scriptdir/case_bvd_merge_09_DB_1

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_09_5.vcf -d $scriptdir/case_bvd_merge_09_DB_2
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_09_1.vcf -d $scriptdir/case_bvd_merge_09_DB_2

2>&1 $scriptdir/../../../bin/bvd-merge.pl $scriptdir/case_bvd_merge_09_DB_1 $scriptdir/case_bvd_merge_09_DB_2 -d $scriptdir/case_bvd_merge_09_DB_local | head -1 > $scriptdir/tmp.txt
echo 'Some of the content from '$scriptdir'/case_bvd_merge_09_DB_2 are duplicated with some from other databases.' > $scriptdir/expected_result

result=$(diff $scriptdir/tmp.txt $scriptdir/expected_result)
if [ $? -eq 0 ]; then
    echo "All case_bvd_merge_09 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_merge_09 testing. See below "
    echo "$result"
fi

rm $scriptdir/tmp.txt
rm $scriptdir/case_bvd_merge_09_DB_local/*
rmdir $scriptdir/case_bvd_merge_09_DB_local/
rm $scriptdir/case_bvd_merge_09_DB_1/*
rmdir $scriptdir/case_bvd_merge_09_DB_1/
rm $scriptdir/case_bvd_merge_09_DB_2/*
rmdir $scriptdir/case_bvd_merge_09_DB_2/
