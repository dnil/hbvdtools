#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_add_06_1.vcf -T colon_cancer,lung_cancer -d $scriptdir/case_bvd_add_06_DB

cp $scriptdir/result_template $scriptdir/expected_result
db_id="$( grep "^##DB_ID" $scriptdir/case_bvd_add_06_DB/bvdb )"
sed -i -e "s/^##DB_ID=.*/$db_id/g" $scriptdir/expected_result

result=$(diff $scriptdir/case_bvd_add_06_DB/bvdb $scriptdir/expected_result)

if [ $? -eq 0 ]; then
    echo "All case_bvd_add_06 are correct !!! Congratz"
else
    echo "Something went wrong in case_bvd_add_06 testing. See below "
    echo "$result"
fi

if [ -e $scriptdir/case_bvd_add_06_DB/ ]
then
	rm $scriptdir/case_bvd_add_06_DB/*
	rmdir $scriptdir/case_bvd_add_06_DB/
fi

rm $scriptdir/expected_result
