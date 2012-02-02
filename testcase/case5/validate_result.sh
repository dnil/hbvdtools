#!/bin/bash

sudo rm -r ~/development/eclipse/perl/src/DB/

bvd-add.pl ~/development/thesis/data/case5/case5_1.vcf
bvd-add.pl ~/development/thesis/data/case5/case5_2.vcf -T colon_cancer,lung_cancer
bvd-add.pl ~/development/thesis/data/case5/case5_3.vcf -T colon_cancer,lung_cancer
bvd-add.pl ~/development/thesis/data/case5/case5_4.vcf -T lung_cancer
bvd-add.pl ~/development/thesis/data/case5/case5_5.vcf -T lung_cancer
bvd-add.pl ~/development/thesis/data/case5/case5_6.vcf -T prostate_cancer
bvd-add.pl ~/development/thesis/data/case5/case5_7.vcf -T prostate_cancer
bvd-add.pl ~/development/thesis/data/case5/case5_8.vcf

result=$(diff ~/development/eclipse/perl/src/DB/bvdb ~/development/thesis/data/case5/expected_result)

if [ $? -eq 0 ]; then
    echo "All case5 are correct !!! Congratz"
else
    echo "Something went wrong in case5 testing. See below "
    echo "$result"
fi


