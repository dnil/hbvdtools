#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
srcdir=~/development/eclipse/perl/src
if [ -f $srcdir/bvd-add.pl ]; then
	cp $srcdir/bvd-add.pl $scriptdir/../../bin/bvd-add.pl
fi
if [ -f $srcdir/Bvdb.pm ]; then
	cp $srcdir/Bvdb.pm $scriptdir/../../bin/Bvdb.pm
fi

sudo rm -r $scriptdir/../../bin/DB/

$scriptdir/../../bin/bvd-add.pl $scriptdir/case5_1.vcf
$scriptdir/../../bin/bvd-add.pl $scriptdir/case5_2.vcf -T colon_cancer,lung_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case5_3.vcf -T colon_cancer,lung_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case5_4.vcf -T lung_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case5_5.vcf -T lung_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case5_6.vcf -T prostate_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case5_7.vcf -T prostate_cancer
$scriptdir/../../bin/bvd-add.pl $scriptdir/case5_8.vcf

result=$(diff $scriptdir/../../bin/DB/bvdb $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case5 are correct !!! Congratz"
else
    echo "Something went wrong in case5 testing. See below "
    echo "$result"
fi


