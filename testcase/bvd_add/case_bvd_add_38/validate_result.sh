#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -e $scriptdir/../../../bin/DB  ]; then
    mkdir $scriptdir/../../../bin/DB
fi

cp $scriptdir/case_bvd_add_38_bvdb $scriptdir/../../../bin/DB/bvdb_hg18
cp $scriptdir/case_bvd_add_38_bvdb_chksum $scriptdir/../../../bin/DB/bvdb_hg18_chksum

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_add_38.vcf --buildver hg18

result=$(diff $scriptdir/../../../bin/DB/bvdb_hg18 $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case_bvd_add_38 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_add_38 testing. See below "
    echo "$result"
fi


