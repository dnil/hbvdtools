#!/bin/bash
sudo rm -r ~/development/eclipse/perl/src/DB/

bvd-add.pl ~/development/thesis/data/case2/case2_1.vcf

result=$(diff ~/development/eclipse/perl/src/DB/bvdb ~/development/thesis/data/case2/expected_result)

if [ $? -eq 0 ]; then
    echo "All case2 are correct !!! Congratz"
else
    echo "Something went wrong in case2 testing. See below "
    echo "$result"
fi


