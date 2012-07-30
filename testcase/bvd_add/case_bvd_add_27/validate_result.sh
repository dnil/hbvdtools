#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -e $scriptdir/../../../bin/DB/bvdb ]
then
	rm $scriptdir/../../../bin/DB/*
	rmdir $scriptdir/../../../bin/DB/
fi

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_add_27_1.vcf --buildver hg17 2>&1 | grep "ERROR" > $scriptdir/tmp.txt 

result=$(diff $scriptdir/tmp.txt $scriptdir/expected_error)

if [ $? -eq 0 ]; then
    echo "All case_bvd_add_27 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_add_27 testing. See below "
    echo "$result"
fi

rm $scriptdir/tmp.txt
