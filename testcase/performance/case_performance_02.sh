#!/bin/bash -l
#SBATCH -A b2011026
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 4-12:00:00
#SBATCH -J coca_pf_02

starttime=$(date +%s)

#scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#vcfdir=$scriptdir
#dbdir=$vcfdir

scriptdir="/bubo/home/h10/jessada/private/hbvdb/testcase/performance"
vcfdir="/glob/jessada/private/data/case_1M_diff"
dbdir="/glob/jessada/private/DB/case_1M_diff"

logfile=$scriptdir/out/case_performance_02_out.txt
if [ -e $dbdir/bvdb ]
then
	rm $dbdir/*
	rmdir $dbdir/
fi

if [ -e $logfile ]
then
	rm $logfile
fi

echo $vcfdir/case_1M_diff_001.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_001.vcf -T kidney_cancer,heart_cancer,liver_cancer,thyroid_cancer,throat_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_002.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_002.vcf -T kidney_cancer,heart_cancer,liver_cancer,thyroid_cancer,throat_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_003.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_003.vcf -T kidney_cancer,heart_cancer,liver_cancer,thyroid_cancer,throat_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_004.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_004.vcf -T kidney_cancer,heart_cancer,liver_cancer,thyroid_cancer,throat_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_005.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_005.vcf -T kidney_cancer,heart_cancer,liver_cancer,thyroid_cancer,throat_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_006.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_006.vcf -T kidney_cancer,heart_cancer,liver_cancer,thyroid_cancer,throat_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_007.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_007.vcf -T kidney_cancer,heart_cancer,liver_cancer,thyroid_cancer,throat_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_008.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_008.vcf -T kidney_cancer,heart_cancer,liver_cancer,thyroid_cancer,throat_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_009.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_009.vcf -T kidney_cancer,heart_cancer,liver_cancer,thyroid_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_010.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_010.vcf -T kidney_cancer,heart_cancer,liver_cancer,thyroid_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_011.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_011.vcf -T kidney_cancer,heart_cancer,liver_cancer,thyroid_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_012.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_012.vcf -T kidney_cancer,heart_cancer,liver_cancer,thyroid_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_013.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_013.vcf -T kidney_cancer,heart_cancer,liver_cancer,thyroid_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_014.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_014.vcf -T kidney_cancer,heart_cancer,liver_cancer,thyroid_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_015.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_015.vcf -T kidney_cancer,heart_cancer,liver_cancer,thyroid_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_016.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_016.vcf -T kidney_cancer,heart_cancer,liver_cancer,thyroid_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_017.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_017.vcf -T kidney_cancer,heart_cancer,liver_cancer,throat_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_018.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_018.vcf -T kidney_cancer,heart_cancer,liver_cancer,throat_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_019.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_019.vcf -T kidney_cancer,heart_cancer,liver_cancer,throat_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_020.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_020.vcf -T kidney_cancer,heart_cancer,liver_cancer,throat_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_021.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_021.vcf -T kidney_cancer,heart_cancer,liver_cancer,throat_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_022.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_022.vcf -T kidney_cancer,heart_cancer,liver_cancer,throat_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_023.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_023.vcf -T kidney_cancer,heart_cancer,liver_cancer,throat_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_024.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_024.vcf -T kidney_cancer,heart_cancer,liver_cancer,throat_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_025.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_025.vcf -T kidney_cancer,heart_cancer,liver_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_026.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_026.vcf -T kidney_cancer,heart_cancer,liver_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_027.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_027.vcf -T kidney_cancer,heart_cancer,liver_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_028.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_028.vcf -T kidney_cancer,heart_cancer,liver_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_029.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_029.vcf -T kidney_cancer,heart_cancer,liver_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_030.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_030.vcf -T kidney_cancer,heart_cancer,liver_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_031.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_031.vcf -T kidney_cancer,heart_cancer,liver_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_032.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_032.vcf -T kidney_cancer,heart_cancer,liver_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_033.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_033.vcf -T kidney_cancer,heart_cancer,thyroid_cancer,throat_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_034.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_034.vcf -T kidney_cancer,heart_cancer,thyroid_cancer,throat_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_035.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_035.vcf -T kidney_cancer,heart_cancer,thyroid_cancer,throat_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_036.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_036.vcf -T kidney_cancer,heart_cancer,thyroid_cancer,throat_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_037.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_037.vcf -T kidney_cancer,heart_cancer,thyroid_cancer,throat_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_038.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_038.vcf -T kidney_cancer,heart_cancer,thyroid_cancer,throat_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_039.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_039.vcf -T kidney_cancer,heart_cancer,thyroid_cancer,throat_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_040.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_040.vcf -T kidney_cancer,heart_cancer,thyroid_cancer,throat_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_041.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_041.vcf -T kidney_cancer,heart_cancer,thyroid_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_042.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_042.vcf -T kidney_cancer,heart_cancer,thyroid_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_043.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_043.vcf -T kidney_cancer,heart_cancer,thyroid_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_044.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_044.vcf -T kidney_cancer,heart_cancer,thyroid_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_045.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_045.vcf -T kidney_cancer,heart_cancer,thyroid_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_046.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_046.vcf -T kidney_cancer,heart_cancer,thyroid_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_047.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_047.vcf -T kidney_cancer,heart_cancer,thyroid_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_048.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_048.vcf -T kidney_cancer,heart_cancer,thyroid_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_049.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_049.vcf -T kidney_cancer,heart_cancer,throat_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_050.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_050.vcf -T kidney_cancer,heart_cancer,throat_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_051.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_051.vcf -T kidney_cancer,heart_cancer,throat_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_052.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_052.vcf -T kidney_cancer,heart_cancer,throat_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_053.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_053.vcf -T kidney_cancer,heart_cancer,throat_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_054.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_054.vcf -T kidney_cancer,heart_cancer,throat_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_055.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_055.vcf -T kidney_cancer,heart_cancer,throat_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_056.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_056.vcf -T kidney_cancer,heart_cancer,throat_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_057.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_057.vcf -T kidney_cancer,heart_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_058.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_058.vcf -T kidney_cancer,heart_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_059.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_059.vcf -T kidney_cancer,heart_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_060.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_060.vcf -T kidney_cancer,heart_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_061.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_061.vcf -T kidney_cancer,heart_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_062.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_062.vcf -T kidney_cancer,heart_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_063.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_063.vcf -T kidney_cancer,heart_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_064.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_064.vcf -T kidney_cancer,heart_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_065.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_065.vcf -T kidney_cancer,liver_cancer,thyroid_cancer,throat_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_066.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_066.vcf -T kidney_cancer,liver_cancer,thyroid_cancer,throat_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_067.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_067.vcf -T kidney_cancer,liver_cancer,thyroid_cancer,throat_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_068.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_068.vcf -T kidney_cancer,liver_cancer,thyroid_cancer,throat_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_069.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_069.vcf -T kidney_cancer,liver_cancer,thyroid_cancer,throat_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_070.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_070.vcf -T kidney_cancer,liver_cancer,thyroid_cancer,throat_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_071.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_071.vcf -T kidney_cancer,liver_cancer,thyroid_cancer,throat_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_072.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_072.vcf -T kidney_cancer,liver_cancer,thyroid_cancer,throat_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_073.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_073.vcf -T kidney_cancer,liver_cancer,thyroid_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_074.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_074.vcf -T kidney_cancer,liver_cancer,thyroid_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_075.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_075.vcf -T kidney_cancer,liver_cancer,thyroid_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_076.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_076.vcf -T kidney_cancer,liver_cancer,thyroid_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_077.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_077.vcf -T kidney_cancer,liver_cancer,thyroid_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_078.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_078.vcf -T kidney_cancer,liver_cancer,thyroid_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_079.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_079.vcf -T kidney_cancer,liver_cancer,thyroid_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_080.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_080.vcf -T kidney_cancer,liver_cancer,thyroid_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_081.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_081.vcf -T kidney_cancer,liver_cancer,throat_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_082.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_082.vcf -T kidney_cancer,liver_cancer,throat_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_083.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_083.vcf -T kidney_cancer,liver_cancer,throat_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_084.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_084.vcf -T kidney_cancer,liver_cancer,throat_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_085.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_085.vcf -T kidney_cancer,liver_cancer,throat_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_086.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_086.vcf -T kidney_cancer,liver_cancer,throat_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_087.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_087.vcf -T kidney_cancer,liver_cancer,throat_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_088.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_088.vcf -T kidney_cancer,liver_cancer,throat_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_089.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_089.vcf -T kidney_cancer,liver_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_090.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_090.vcf -T kidney_cancer,liver_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_091.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_091.vcf -T kidney_cancer,liver_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_092.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_092.vcf -T kidney_cancer,liver_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_093.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_093.vcf -T kidney_cancer,liver_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_094.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_094.vcf -T kidney_cancer,liver_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_095.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_095.vcf -T kidney_cancer,liver_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_096.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_096.vcf -T kidney_cancer,liver_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_097.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_097.vcf -T kidney_cancer,thyroid_cancer,throat_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_098.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_098.vcf -T kidney_cancer,thyroid_cancer,throat_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_099.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_099.vcf -T kidney_cancer,thyroid_cancer,throat_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_100.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_100.vcf -T kidney_cancer,thyroid_cancer,throat_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_101.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_101.vcf -T kidney_cancer,thyroid_cancer,throat_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_102.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_102.vcf -T kidney_cancer,thyroid_cancer,throat_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_103.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_103.vcf -T kidney_cancer,thyroid_cancer,throat_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_104.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_104.vcf -T kidney_cancer,thyroid_cancer,throat_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_105.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_105.vcf -T kidney_cancer,thyroid_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_106.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_106.vcf -T kidney_cancer,thyroid_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_107.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_107.vcf -T kidney_cancer,thyroid_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_108.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_108.vcf -T kidney_cancer,thyroid_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_109.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_109.vcf -T kidney_cancer,thyroid_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_110.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_110.vcf -T kidney_cancer,thyroid_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_111.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_111.vcf -T kidney_cancer,thyroid_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_112.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_112.vcf -T kidney_cancer,thyroid_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_113.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_113.vcf -T kidney_cancer,throat_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_114.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_114.vcf -T kidney_cancer,throat_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_115.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_115.vcf -T kidney_cancer,throat_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_116.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_116.vcf -T kidney_cancer,throat_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_117.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_117.vcf -T kidney_cancer,throat_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_118.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_118.vcf -T kidney_cancer,throat_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_119.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_119.vcf -T kidney_cancer,throat_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_120.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_120.vcf -T kidney_cancer,throat_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_121.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_121.vcf -T kidney_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_122.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_122.vcf -T kidney_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_123.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_123.vcf -T kidney_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_124.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_124.vcf -T kidney_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_125.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_125.vcf -T kidney_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_126.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_126.vcf -T kidney_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_127.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_127.vcf -T kidney_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_128.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_128.vcf -T kidney_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_129.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_129.vcf -T heart_cancer,liver_cancer,thyroid_cancer,throat_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_130.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_130.vcf -T heart_cancer,liver_cancer,thyroid_cancer,throat_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_131.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_131.vcf -T heart_cancer,liver_cancer,thyroid_cancer,throat_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_132.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_132.vcf -T heart_cancer,liver_cancer,thyroid_cancer,throat_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_133.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_133.vcf -T heart_cancer,liver_cancer,thyroid_cancer,throat_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_134.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_134.vcf -T heart_cancer,liver_cancer,thyroid_cancer,throat_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_135.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_135.vcf -T heart_cancer,liver_cancer,thyroid_cancer,throat_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_136.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_136.vcf -T heart_cancer,liver_cancer,thyroid_cancer,throat_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_137.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_137.vcf -T heart_cancer,liver_cancer,thyroid_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_138.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_138.vcf -T heart_cancer,liver_cancer,thyroid_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_139.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_139.vcf -T heart_cancer,liver_cancer,thyroid_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_140.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_140.vcf -T heart_cancer,liver_cancer,thyroid_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_141.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_141.vcf -T heart_cancer,liver_cancer,thyroid_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_142.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_142.vcf -T heart_cancer,liver_cancer,thyroid_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_143.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_143.vcf -T heart_cancer,liver_cancer,thyroid_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_144.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_144.vcf -T heart_cancer,liver_cancer,thyroid_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_145.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_145.vcf -T heart_cancer,liver_cancer,throat_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_146.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_146.vcf -T heart_cancer,liver_cancer,throat_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_147.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_147.vcf -T heart_cancer,liver_cancer,throat_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_148.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_148.vcf -T heart_cancer,liver_cancer,throat_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_149.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_149.vcf -T heart_cancer,liver_cancer,throat_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_150.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_150.vcf -T heart_cancer,liver_cancer,throat_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_151.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_151.vcf -T heart_cancer,liver_cancer,throat_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_152.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_152.vcf -T heart_cancer,liver_cancer,throat_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_153.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_153.vcf -T heart_cancer,liver_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_154.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_154.vcf -T heart_cancer,liver_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_155.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_155.vcf -T heart_cancer,liver_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_156.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_156.vcf -T heart_cancer,liver_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_157.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_157.vcf -T heart_cancer,liver_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_158.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_158.vcf -T heart_cancer,liver_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_159.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_159.vcf -T heart_cancer,liver_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_160.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_160.vcf -T heart_cancer,liver_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_161.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_161.vcf -T heart_cancer,thyroid_cancer,throat_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_162.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_162.vcf -T heart_cancer,thyroid_cancer,throat_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_163.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_163.vcf -T heart_cancer,thyroid_cancer,throat_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_164.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_164.vcf -T heart_cancer,thyroid_cancer,throat_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_165.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_165.vcf -T heart_cancer,thyroid_cancer,throat_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_166.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_166.vcf -T heart_cancer,thyroid_cancer,throat_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_167.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_167.vcf -T heart_cancer,thyroid_cancer,throat_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_168.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_168.vcf -T heart_cancer,thyroid_cancer,throat_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_169.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_169.vcf -T heart_cancer,thyroid_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_170.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_170.vcf -T heart_cancer,thyroid_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_171.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_171.vcf -T heart_cancer,thyroid_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_172.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_172.vcf -T heart_cancer,thyroid_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_173.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_173.vcf -T heart_cancer,thyroid_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_174.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_174.vcf -T heart_cancer,thyroid_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_175.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_175.vcf -T heart_cancer,thyroid_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_176.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_176.vcf -T heart_cancer,thyroid_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_177.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_177.vcf -T heart_cancer,throat_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_178.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_178.vcf -T heart_cancer,throat_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_179.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_179.vcf -T heart_cancer,throat_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_180.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_180.vcf -T heart_cancer,throat_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_181.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_181.vcf -T heart_cancer,throat_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_182.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_182.vcf -T heart_cancer,throat_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_183.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_183.vcf -T heart_cancer,throat_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_184.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_184.vcf -T heart_cancer,throat_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_185.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_185.vcf -T heart_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_186.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_186.vcf -T heart_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_187.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_187.vcf -T heart_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_188.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_188.vcf -T heart_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_189.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_189.vcf -T heart_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_190.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_190.vcf -T heart_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_191.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_191.vcf -T heart_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_192.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_192.vcf -T heart_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_193.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_193.vcf -T liver_cancer,thyroid_cancer,throat_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_194.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_194.vcf -T liver_cancer,thyroid_cancer,throat_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_195.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_195.vcf -T liver_cancer,thyroid_cancer,throat_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_196.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_196.vcf -T liver_cancer,thyroid_cancer,throat_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_197.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_197.vcf -T liver_cancer,thyroid_cancer,throat_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_198.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_198.vcf -T liver_cancer,thyroid_cancer,throat_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_199.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_199.vcf -T liver_cancer,thyroid_cancer,throat_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_200.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_200.vcf -T liver_cancer,thyroid_cancer,throat_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_201.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_201.vcf -T liver_cancer,thyroid_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_202.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_202.vcf -T liver_cancer,thyroid_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_203.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_203.vcf -T liver_cancer,thyroid_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_204.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_204.vcf -T liver_cancer,thyroid_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_205.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_205.vcf -T liver_cancer,thyroid_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_206.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_206.vcf -T liver_cancer,thyroid_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_207.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_207.vcf -T liver_cancer,thyroid_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_208.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_208.vcf -T liver_cancer,thyroid_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_209.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_209.vcf -T liver_cancer,throat_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_210.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_210.vcf -T liver_cancer,throat_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_211.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_211.vcf -T liver_cancer,throat_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_212.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_212.vcf -T liver_cancer,throat_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_213.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_213.vcf -T liver_cancer,throat_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_214.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_214.vcf -T liver_cancer,throat_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_215.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_215.vcf -T liver_cancer,throat_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_216.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_216.vcf -T liver_cancer,throat_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_217.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_217.vcf -T liver_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_218.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_218.vcf -T liver_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_219.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_219.vcf -T liver_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_220.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_220.vcf -T liver_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_221.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_221.vcf -T liver_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_222.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_222.vcf -T liver_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_223.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_223.vcf -T liver_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_224.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_224.vcf -T liver_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_225.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_225.vcf -T thyroid_cancer,throat_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_226.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_226.vcf -T thyroid_cancer,throat_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_227.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_227.vcf -T thyroid_cancer,throat_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_228.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_228.vcf -T thyroid_cancer,throat_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_229.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_229.vcf -T thyroid_cancer,throat_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_230.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_230.vcf -T thyroid_cancer,throat_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_231.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_231.vcf -T thyroid_cancer,throat_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_232.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_232.vcf -T thyroid_cancer,throat_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_233.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_233.vcf -T thyroid_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_234.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_234.vcf -T thyroid_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_235.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_235.vcf -T thyroid_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_236.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_236.vcf -T thyroid_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_237.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_237.vcf -T thyroid_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_238.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_238.vcf -T thyroid_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_239.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_239.vcf -T thyroid_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_240.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_240.vcf -T thyroid_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_241.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_241.vcf -T throat_cancer,lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_242.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_242.vcf -T throat_cancer,lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_243.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_243.vcf -T throat_cancer,lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_244.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_244.vcf -T throat_cancer,lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_245.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_245.vcf -T throat_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_246.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_246.vcf -T throat_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_247.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_247.vcf -T throat_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_248.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_248.vcf -T throat_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_249.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_249.vcf -T lung_cancer,breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_250.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_250.vcf -T lung_cancer,breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_251.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_251.vcf -T lung_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_252.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_252.vcf -T lung_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_253.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_253.vcf -T breast_cancer,colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_254.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_254.vcf -T breast_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_255.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_255.vcf -T colon_cancer -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_1M_diff_000.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_1M_diff_000.vcf -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile

