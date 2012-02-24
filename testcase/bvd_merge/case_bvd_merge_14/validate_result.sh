#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -e $scriptdir/../../../bin/DB/bvdb ]
then
	rm $scriptdir/../../../bin/DB/*
	rmdir $scriptdir/../../../bin/DB/
fi

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_14_1.vcf
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_14_2.vcf

old_bvdb_backup_file=$(ls $scriptdir/../../../bin/DB/bvdb2* | sort -r | head -1)
old_chksum_backup_file=$(ls $scriptdir/../../../bin/DB/bvdb_chksum2* | sort -r | head -1)

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_14_3.vcf -d $scriptdir/case_bvd_merge_14_DB_1

$scriptdir/../../../bin/bvd-merge.pl $scriptdir/case_bvd_merge_14_DB_1 -s

new_bvdb_backup_file=$(ls $scriptdir/../../../bin/DB/bvdb2* | sort -r | head -1)
new_chksum_backup_file=$(ls $scriptdir/../../../bin/DB/bvdb_chksum2* | sort -r | head -1)

result=$(diff $old_bvdb_backup_file  $new_bvdb_backup_file)

if [ $? -ne 0 ]; then
	echo "Something went wrong in case_bvd_merge_14 testing. See below "
	echo "$result"
	exit 0
fi

result=$(diff $old_chksum_backup_file  $new_chksum_backup_file)

if [ $? -ne 0 ]; then
	echo "Something went wrong in case_bvd_merge_14 testing. See below "
	echo "$result"
	exit 0
fi

echo "All case_bvd_merge_14 are correct !!! Congratz"

rm $scriptdir/case_bvd_merge_14_DB_1/*
rmdir $scriptdir/case_bvd_merge_14_DB_1/
