#!/bin/bash

sudo rm -r ~/development/eclipse/perl/src/DB/

bvd-add.pl ~/development/thesis/data/case4/case4_1.vcf -T Colon_Cancer
bvd-add.pl ~/development/thesis/data/case4/case4_2.vcf -T Colon_Cancer
bvd-add.pl ~/development/thesis/data/case4/case4_3.vcf -T Colon_Cancer
bvd-add.pl ~/development/thesis/data/case4/case4_4.vcf -T Colon_Cancer
bvd-add.pl ~/development/thesis/data/case4/case4_5.vcf -T Colon_Cancer
bvd-add.pl ~/development/thesis/data/case4/case4_6.vcf -T Colon_Cancer

result=$(diff ~/development/eclipse/perl/src/DB/bvdb ~/development/thesis/data/case4/expected_result)

if [ $? -eq 0 ]; then
    echo "All case4 are correct !!! Congratz"
else
    echo "Something went wrong in case4 testing. See below "
    echo "$result"
fi


