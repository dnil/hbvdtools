#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -e $scriptdir/../../../bin/DB/bvdb ]
then
	rm $scriptdir/../../../bin/DB/*
	rmdir $scriptdir/../../../bin/DB/
fi

echo "Excuting case_bvd_merge_13. Please wait ................................."

$scriptdir/../../../bin/bvd-add.pl $scriptdir/SRR028813.var.flt.vcf -T colon_cancer
$scriptdir/../../../bin/bvd-add.pl $scriptdir/SRR028812.var.flt.vcf
$scriptdir/../../../bin/bvd-add.pl $scriptdir/SRR028815.var.flt.vcf -T lung_cancer,colon_cancer
$scriptdir/../../../bin/bvd-add.pl $scriptdir/SRR028814.var.flt.vcf -T colon_cancer,lung_cancer
$scriptdir/../../../bin/bvd-add.pl $scriptdir/SRR028816.var.flt.vcf -T lung_cancer

$scriptdir/../../../bin/bvd-add.pl $scriptdir/SRR028814.var.flt.vcf -T colon_cancer,lung_cancer --database $scriptdir/case_bvd_merge_13_DB_1
$scriptdir/../../../bin/bvd-add.pl $scriptdir/SRR028812.var.flt.vcf -d $scriptdir/case_bvd_merge_13_DB_5
$scriptdir/../../../bin/bvd-add.pl $scriptdir/SRR028816.var.flt.vcf --database $scriptdir/case_bvd_merge_13_DB_4/ -T lung_cancer
$scriptdir/../../../bin/bvd-add.pl $scriptdir/SRR028813.var.flt.vcf -d $scriptdir/case_bvd_merge_13_DB_2/ -T colon_cancer
$scriptdir/../../../bin/bvd-add.pl $scriptdir/SRR028815.var.flt.vcf -T lung_cancer,colon_cancer -d $scriptdir/case_bvd_merge_13_DB_3/

$scriptdir/../../../bin/bvd-merge.pl $scriptdir/case_bvd_merge_13_DB_4 $scriptdir/case_bvd_merge_13_DB_3/ $scriptdir/case_bvd_merge_13_DB_1 -d $scriptdir/case_bvd_merge_13_DB_merged/ $scriptdir/case_bvd_merge_13_DB_2 $scriptdir/case_bvd_merge_13_DB_5 

result=$(diff $scriptdir/case_bvd_merge_13_DB_merged/bvdb $scriptdir/../../../bin/DB/bvdb)

if [ $? -eq 0 ]; then
    echo "All case_bvd_merge_13 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_merge_13 testing. See below "
    echo "$result"
fi

rm $scriptdir/case_bvd_merge_13_DB_merged/*
rmdir $scriptdir/case_bvd_merge_13_DB_merged/
rm $scriptdir/case_bvd_merge_13_DB_1/*
rmdir $scriptdir/case_bvd_merge_13_DB_1/
rm $scriptdir/case_bvd_merge_13_DB_2/*
rmdir $scriptdir/case_bvd_merge_13_DB_2/
rm $scriptdir/case_bvd_merge_13_DB_3/*
rmdir $scriptdir/case_bvd_merge_13_DB_3/
rm $scriptdir/case_bvd_merge_13_DB_4/*
rmdir $scriptdir/case_bvd_merge_13_DB_4/
rm $scriptdir/case_bvd_merge_13_DB_5/*
rmdir $scriptdir/case_bvd_merge_13_DB_5/

