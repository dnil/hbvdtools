#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
srcdir=~/development/eclipse/perl/src
if [ -f $srcdir/bvd-add.pl ]; then
	cp $srcdir/bvd-add.pl $scriptdir/../../bin/bvd-add.pl
fi
if [ -f $srcdir/Bvdb.pm ]; then
	cp $srcdir/Bvdb.pm $scriptdir/../../bin/Bvdb.pm
fi

cp $scriptdir/case3_bvdb $scriptdir/../../bin/DB/bvdb
cp $scriptdir/case3_bvdb_chksum $scriptdir/../../bin/DB/bvdb_chksum

$scriptdir/../../bin/bvd-add.pl $scriptdir/case3_2.vcf -T Lung_Cancer

result=$(diff $scriptdir/../../bin/DB/bvdb $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case3 are correct !!! Congratz"
else
    echo "Something went wrong in case3 testing. See below "
    echo "$result"
fi


