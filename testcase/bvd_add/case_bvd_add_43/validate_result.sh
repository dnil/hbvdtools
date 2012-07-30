#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -z $scriptdir/../../../bin/DB  ]; then
    mkdir $scriptdir/../../../bin/DB
fi

cp $scriptdir/case_bvd_add_43_bvdb $scriptdir/../../../bin/DB/bvdb
cp $scriptdir/case_bvd_add_43_bvdb_chksum $scriptdir/../../../bin/DB/bvdb_chksum

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_add_43.vcf --buildver hg19

result=$(diff $scriptdir/../../../bin/DB/bvdb $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case_bvd_add_43 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_add_43 testing. See below "
    echo "$result"
fi


