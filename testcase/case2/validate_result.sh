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

$scriptdir/../../bin/bvd-add.pl $scriptdir/case2_1.vcf -T Colon_Cancer,Lung_Cancer

result=$(diff $scriptdir/../../bin/DB/bvdb $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case2 are correct !!! Congratz"
else
    echo "Something went wrong in case2 testing. See below "
    echo "$result"
fi


