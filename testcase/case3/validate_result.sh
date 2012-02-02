#!/bin/bash
cp ~/development/thesis/data/case3/case3_bvdb ~/development/eclipse/perl/src/DB/bvdb
cp ~/development/thesis/data/case3/case3_bvdb_chksum ~/development/eclipse/perl/src/DB/bvdb_chksum

bvd-add.pl ~/development/thesis/data/case3/case3_2.vcf

result=$(diff ~/development/eclipse/perl/src/DB/bvdb ~/development/thesis/data/case3/expected_result)

if [ $? -eq 0 ]; then
    echo "All case3 are correct !!! Congratz"
else
    echo "Something went wrong in case3 testing. See below "
    echo "$result"
fi


