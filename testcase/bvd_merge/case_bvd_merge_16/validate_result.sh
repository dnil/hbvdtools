#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -e $scriptdir/../../../bin/DB/bvdb ]
then
	rm $scriptdir/../../../bin/DB/*
	rmdir $scriptdir/../../../bin/DB/
fi

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_16_1.vcf
$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_16_2.vcf

cp $scriptdir/../../../bin/DB/bvdb $scriptdir/bvdb_backup
cp $scriptdir/../../../bin/DB/bvdb_chksum $scriptdir/chksum_backup

$scriptdir/../../../bin/bvd-add.pl $scriptdir/case_bvd_merge_16_3.vcf -d $scriptdir/case_bvd_merge_16_DB_1

$scriptdir/../../../bin/bvd-merge.pl $scriptdir/case_bvd_merge_16_DB_1

bvdb_backup_file=$(ls $scriptdir/../../../bin/DB/bvdb2* | sort -r | head -1)
chksum_backup_file=$(ls $scriptdir/../../../bin/DB/bvdb_chksum2* | sort -r | head -1)

result=$(diff $scriptdir/bvdb_backup  $bvdb_backup_file)

if [ $? -ne 0 ]; then
	echo "Something went wrong in case_bvd_merge_16 testing. See below "
	echo "$result"
	exit 0
fi

result=$(diff $scriptdir/chksum_backup  $chksum_backup_file)

if [ $? -ne 0 ]; then
	echo "Something went wrong in case_bvd_merge_16 testing. See below "
	echo "$result"
	exit 0
fi

echo "All case_bvd_merge_16 are correct !!! Congratz"

rm $scriptdir/case_bvd_merge_16_DB_1/*
rmdir $scriptdir/case_bvd_merge_16_DB_1/
rm $scriptdir/bvdb_backup
rm $scriptdir/chksum_backup
