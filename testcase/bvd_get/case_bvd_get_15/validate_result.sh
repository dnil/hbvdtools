#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -e $scriptdir/../../../bin/DB  ]; then
    mkdir $scriptdir/../../../bin/DB
fi
if [ -e $scriptdir/../../../bin/DB/bvdb  ]; then
    rm $scriptdir/../../../bin/DB/bvdb*
fi

cp $scriptdir/case_bvd_get_15_bvdb $scriptdir/../../../bin/DB/bvdb
cp $scriptdir/case_bvd_get_15_bvdb_chksum $scriptdir/../../../bin/DB/bvdb_chksum

$scriptdir/../../../bin/bvd-get.pl -T lung_cancer,colon_cancer,lung_cancer --vcf --buildver hg19 > $scriptdir/tmp.txt 

result=$(diff $scriptdir/tmp.txt $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case_bvd_get_15 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_get_15 testing. See below "
    echo "$result"
fi

rm $scriptdir/tmp.txt

