#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -e $scriptdir/../../../bin/DB/bvdb ]
then
	rm $scriptdir/../../../bin/DB/*
	rmdir $scriptdir/../../../bin/DB/
fi

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_06_1.vcf
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_06_2.vcf

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_06_3.vcf -d $scriptdir/case_bvd_merge_06_DB_1
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_06_4.vcf -d $scriptdir/case_bvd_merge_06_DB_1

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_06_5.vcf -d $scriptdir/case_bvd_merge_06_DB_2
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_06_3.vcf -d $scriptdir/case_bvd_merge_06_DB_2

2>&1 $scriptdir/../../../bin/bvd-merge.pl $scriptdir/case_bvd_merge_06_DB_1 $scriptdir/case_bvd_merge_06_DB_2 | head -1 > $scriptdir/tmp.txt
echo 'Some of the content from '$scriptdir'/case_bvd_merge_06_DB_2 are duplicated with some from other databases.' > $scriptdir/expected_result

result=$(diff $scriptdir/tmp.txt $scriptdir/expected_result)
if [ $? -eq 0 ]; then
    echo "All case_bvd_merge_06 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_merge_06 testing. See below "
    echo "$result"
fi

rm $scriptdir/tmp.txt
rm $scriptdir/case_bvd_merge_06_DB_1/*
rmdir $scriptdir/case_bvd_merge_06_DB_1/
rm $scriptdir/case_bvd_merge_06_DB_2/*
rmdir $scriptdir/case_bvd_merge_06_DB_2/
