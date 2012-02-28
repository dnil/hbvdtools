#!/bin/bash -l
#SBATCH -A b2011026
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 1:00:00
#SBATCH -J coca_pf_01

starttime=$(date +%s)
#scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
scriptdir="/bubo/home/h10/jessada/private/hbvdb/testcase/performance"

outfile=$scriptdir/out/case_performance_01_out.txt
if [ -e $scriptdir/../../bin/DB/bvdb ]
then
	rm $scriptdir/../../bin/DB/*
	rmdir $scriptdir/../../bin/DB/
fi

if [ -e $outfile ]
then
	rm $outfile
fi

for file in $scriptdir/data/*.vcf
do
	echo $file >> $outfile

	$scriptdir/../../bin/bvd-add.pl $file

	endtime=$(date +%s)
	timediff=$((endtime-starttime))

	echo total excutetime so far $timediff seconds >> $outfile
done


