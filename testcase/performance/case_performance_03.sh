#!/bin/bash -l
#SBATCH -A b2011026
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 4-7:00:00
#SBATCH -J coca_pf_03

starttime=$(date +%s)

#scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#vcfdir=$scriptdir
#dbdir=$vcfdir

scriptdir="/bubo/home/h10/jessada/private/hbvdb/testcase/performance"
vcfdir="/glob/jessada/private/data/case_100k_bin"
dbdir="/glob/jessada/private/DB/case_100k_bin"

logfile=$scriptdir/out/case_performance_03_out.txt
if [ -e $dbdir/bvdb ]
then
	rm $dbdir/*
	rmdir $dbdir/
fi

if [ -e $logfile ]
then
	rm $logfile
fi

echo $vcfdir/case_100k_bin_01_001.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_001.vcf -T A001_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_002.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_002.vcf -T A002_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_003.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_003.vcf -T A003_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_004.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_004.vcf -T A004_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_005.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_005.vcf -T A005_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_006.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_006.vcf -T A006_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_007.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_007.vcf -T A007_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_008.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_008.vcf -T A008_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_009.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_009.vcf -T A009_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_010.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_010.vcf -T A010_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_011.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_011.vcf -T A011_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_012.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_012.vcf -T A012_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_013.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_013.vcf -T A013_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_014.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_014.vcf -T A014_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_015.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_015.vcf -T A015_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_016.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_016.vcf -T A016_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_017.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_017.vcf -T A017_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_018.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_018.vcf -T A018_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_019.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_019.vcf -T A019_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_020.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_020.vcf -T A020_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_021.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_021.vcf -T A021_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_022.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_022.vcf -T A022_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_023.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_023.vcf -T A023_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_024.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_024.vcf -T A024_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_025.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_025.vcf -T A025_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_026.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_026.vcf -T A026_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_027.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_027.vcf -T A027_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_028.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_028.vcf -T A028_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_029.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_029.vcf -T A029_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_030.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_030.vcf -T A030_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_031.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_031.vcf -T A031_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_032.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_032.vcf -T A032_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_033.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_033.vcf -T A033_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_034.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_034.vcf -T A034_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_035.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_035.vcf -T A035_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_036.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_036.vcf -T A036_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_037.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_037.vcf -T A037_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_038.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_038.vcf -T A038_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_039.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_039.vcf -T A039_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_040.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_040.vcf -T A040_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_041.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_041.vcf -T A041_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_042.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_042.vcf -T A042_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_043.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_043.vcf -T A043_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_044.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_044.vcf -T A044_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_045.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_045.vcf -T A045_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_046.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_046.vcf -T A046_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_047.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_047.vcf -T A047_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_048.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_048.vcf -T A048_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_049.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_049.vcf -T A049_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_050.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_050.vcf -T A050_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_051.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_051.vcf -T A051_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_052.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_052.vcf -T A052_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_053.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_053.vcf -T A053_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_054.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_054.vcf -T A054_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_055.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_055.vcf -T A055_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_056.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_056.vcf -T A056_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_057.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_057.vcf -T A057_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_058.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_058.vcf -T A058_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_059.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_059.vcf -T A059_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_060.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_060.vcf -T A060_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_061.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_061.vcf -T A061_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_062.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_062.vcf -T A062_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_063.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_063.vcf -T A063_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_064.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_064.vcf -T A064_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_065.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_065.vcf -T A065_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_066.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_066.vcf -T A066_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_067.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_067.vcf -T A067_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_068.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_068.vcf -T A068_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_069.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_069.vcf -T A069_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_070.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_070.vcf -T A070_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_071.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_071.vcf -T A071_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_072.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_072.vcf -T A072_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_073.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_073.vcf -T A073_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_074.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_074.vcf -T A074_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_075.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_075.vcf -T A075_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_076.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_076.vcf -T A076_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_077.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_077.vcf -T A077_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_078.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_078.vcf -T A078_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_079.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_079.vcf -T A079_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_080.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_080.vcf -T A080_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_081.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_081.vcf -T A081_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_082.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_082.vcf -T A082_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_083.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_083.vcf -T A083_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_084.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_084.vcf -T A084_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_085.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_085.vcf -T A085_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_086.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_086.vcf -T A086_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_087.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_087.vcf -T A087_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_088.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_088.vcf -T A088_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_089.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_089.vcf -T A089_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_090.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_090.vcf -T A090_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_091.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_091.vcf -T A091_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_092.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_092.vcf -T A092_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_093.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_093.vcf -T A093_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_094.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_094.vcf -T A094_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_095.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_095.vcf -T A095_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_096.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_096.vcf -T A096_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_097.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_097.vcf -T A097_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_098.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_098.vcf -T A098_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_099.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_099.vcf -T A099_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_01_100.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_01_100.vcf -T A100_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_001.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_001.vcf -T B001_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_002.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_002.vcf -T B002_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_003.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_003.vcf -T B003_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_004.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_004.vcf -T B004_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_005.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_005.vcf -T B005_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_006.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_006.vcf -T B006_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_007.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_007.vcf -T B007_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_008.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_008.vcf -T B008_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_009.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_009.vcf -T B009_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_010.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_010.vcf -T B010_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_011.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_011.vcf -T B011_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_012.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_012.vcf -T B012_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_013.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_013.vcf -T B013_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_014.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_014.vcf -T B014_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_015.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_015.vcf -T B015_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_016.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_016.vcf -T B016_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_017.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_017.vcf -T B017_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_018.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_018.vcf -T B018_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_019.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_019.vcf -T B019_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_020.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_020.vcf -T B020_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_021.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_021.vcf -T B021_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_022.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_022.vcf -T B022_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_023.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_023.vcf -T B023_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_024.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_024.vcf -T B024_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_025.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_025.vcf -T B025_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_026.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_026.vcf -T B026_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_027.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_027.vcf -T B027_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_028.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_028.vcf -T B028_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_029.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_029.vcf -T B029_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_030.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_030.vcf -T B030_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_031.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_031.vcf -T B031_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_032.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_032.vcf -T B032_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_033.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_033.vcf -T B033_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_034.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_034.vcf -T B034_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_035.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_035.vcf -T B035_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_036.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_036.vcf -T B036_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_037.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_037.vcf -T B037_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_038.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_038.vcf -T B038_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_039.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_039.vcf -T B039_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_040.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_040.vcf -T B040_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_041.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_041.vcf -T B041_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_042.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_042.vcf -T B042_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_043.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_043.vcf -T B043_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_044.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_044.vcf -T B044_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_045.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_045.vcf -T B045_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_046.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_046.vcf -T B046_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_047.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_047.vcf -T B047_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_048.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_048.vcf -T B048_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_049.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_049.vcf -T B049_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_050.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_050.vcf -T B050_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_051.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_051.vcf -T B051_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_052.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_052.vcf -T B052_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_053.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_053.vcf -T B053_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_054.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_054.vcf -T B054_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_055.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_055.vcf -T B055_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_056.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_056.vcf -T B056_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_057.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_057.vcf -T B057_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_058.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_058.vcf -T B058_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_059.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_059.vcf -T B059_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_060.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_060.vcf -T B060_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_061.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_061.vcf -T B061_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_062.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_062.vcf -T B062_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_063.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_063.vcf -T B063_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_064.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_064.vcf -T B064_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_065.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_065.vcf -T B065_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_066.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_066.vcf -T B066_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_067.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_067.vcf -T B067_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_068.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_068.vcf -T B068_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_069.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_069.vcf -T B069_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_070.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_070.vcf -T B070_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_071.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_071.vcf -T B071_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_072.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_072.vcf -T B072_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_073.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_073.vcf -T B073_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_074.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_074.vcf -T B074_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_075.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_075.vcf -T B075_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_076.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_076.vcf -T B076_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_077.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_077.vcf -T B077_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_078.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_078.vcf -T B078_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_079.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_079.vcf -T B079_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_080.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_080.vcf -T B080_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_081.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_081.vcf -T B081_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_082.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_082.vcf -T B082_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_083.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_083.vcf -T B083_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_084.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_084.vcf -T B084_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_085.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_085.vcf -T B085_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_086.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_086.vcf -T B086_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_087.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_087.vcf -T B087_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_088.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_088.vcf -T B088_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_089.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_089.vcf -T B089_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_090.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_090.vcf -T B090_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_091.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_091.vcf -T B091_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_092.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_092.vcf -T B092_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_093.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_093.vcf -T B093_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_094.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_094.vcf -T B094_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_095.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_095.vcf -T B095_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_096.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_096.vcf -T B096_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_097.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_097.vcf -T B097_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_098.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_098.vcf -T B098_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_099.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_099.vcf -T B099_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_02_100.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_02_100.vcf -T B100_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_001.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_001.vcf -T C001_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_002.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_002.vcf -T C002_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_003.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_003.vcf -T C003_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_004.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_004.vcf -T C004_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_005.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_005.vcf -T C005_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_006.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_006.vcf -T C006_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_007.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_007.vcf -T C007_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_008.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_008.vcf -T C008_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_009.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_009.vcf -T C009_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_010.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_010.vcf -T C010_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_011.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_011.vcf -T C011_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_012.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_012.vcf -T C012_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_013.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_013.vcf -T C013_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_014.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_014.vcf -T C014_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_015.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_015.vcf -T C015_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_016.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_016.vcf -T C016_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_017.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_017.vcf -T C017_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_018.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_018.vcf -T C018_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_019.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_019.vcf -T C019_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_020.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_020.vcf -T C020_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_021.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_021.vcf -T C021_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_022.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_022.vcf -T C022_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_023.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_023.vcf -T C023_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_024.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_024.vcf -T C024_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_025.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_025.vcf -T C025_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_026.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_026.vcf -T C026_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_027.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_027.vcf -T C027_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_028.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_028.vcf -T C028_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_029.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_029.vcf -T C029_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_030.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_030.vcf -T C030_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_031.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_031.vcf -T C031_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_032.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_032.vcf -T C032_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_033.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_033.vcf -T C033_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_034.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_034.vcf -T C034_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_035.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_035.vcf -T C035_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_036.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_036.vcf -T C036_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_037.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_037.vcf -T C037_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_038.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_038.vcf -T C038_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_039.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_039.vcf -T C039_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_040.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_040.vcf -T C040_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_041.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_041.vcf -T C041_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_042.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_042.vcf -T C042_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_043.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_043.vcf -T C043_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_044.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_044.vcf -T C044_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_045.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_045.vcf -T C045_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_046.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_046.vcf -T C046_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_047.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_047.vcf -T C047_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_048.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_048.vcf -T C048_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_049.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_049.vcf -T C049_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_050.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_050.vcf -T C050_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_051.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_051.vcf -T C051_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_052.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_052.vcf -T C052_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_053.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_053.vcf -T C053_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_054.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_054.vcf -T C054_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_055.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_055.vcf -T C055_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_056.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_056.vcf -T C056_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_057.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_057.vcf -T C057_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_058.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_058.vcf -T C058_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_059.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_059.vcf -T C059_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_060.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_060.vcf -T C060_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_061.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_061.vcf -T C061_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_062.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_062.vcf -T C062_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_063.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_063.vcf -T C063_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_064.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_064.vcf -T C064_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_065.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_065.vcf -T C065_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_066.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_066.vcf -T C066_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_067.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_067.vcf -T C067_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_068.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_068.vcf -T C068_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_069.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_069.vcf -T C069_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_070.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_070.vcf -T C070_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_071.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_071.vcf -T C071_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_072.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_072.vcf -T C072_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_073.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_073.vcf -T C073_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_074.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_074.vcf -T C074_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_075.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_075.vcf -T C075_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_076.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_076.vcf -T C076_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_077.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_077.vcf -T C077_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_078.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_078.vcf -T C078_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_079.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_079.vcf -T C079_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_080.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_080.vcf -T C080_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_081.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_081.vcf -T C081_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_082.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_082.vcf -T C082_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_083.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_083.vcf -T C083_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_084.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_084.vcf -T C084_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_085.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_085.vcf -T C085_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_086.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_086.vcf -T C086_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_087.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_087.vcf -T C087_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_088.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_088.vcf -T C088_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_089.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_089.vcf -T C089_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_090.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_090.vcf -T C090_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_091.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_091.vcf -T C091_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_092.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_092.vcf -T C092_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_093.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_093.vcf -T C093_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_094.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_094.vcf -T C094_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_095.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_095.vcf -T C095_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_096.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_096.vcf -T C096_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_097.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_097.vcf -T C097_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_098.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_098.vcf -T C098_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_099.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_099.vcf -T C099_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_03_100.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_03_100.vcf -T C100_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_001.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_001.vcf -T D001_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_002.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_002.vcf -T D002_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_003.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_003.vcf -T D003_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_004.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_004.vcf -T D004_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_005.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_005.vcf -T D005_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_006.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_006.vcf -T D006_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_007.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_007.vcf -T D007_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_008.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_008.vcf -T D008_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_009.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_009.vcf -T D009_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_010.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_010.vcf -T D010_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_011.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_011.vcf -T D011_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_012.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_012.vcf -T D012_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_013.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_013.vcf -T D013_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_014.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_014.vcf -T D014_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_015.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_015.vcf -T D015_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_016.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_016.vcf -T D016_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_017.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_017.vcf -T D017_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_018.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_018.vcf -T D018_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_019.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_019.vcf -T D019_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_020.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_020.vcf -T D020_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_021.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_021.vcf -T D021_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_022.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_022.vcf -T D022_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_023.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_023.vcf -T D023_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_024.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_024.vcf -T D024_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_025.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_025.vcf -T D025_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_026.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_026.vcf -T D026_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_027.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_027.vcf -T D027_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_028.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_028.vcf -T D028_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_029.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_029.vcf -T D029_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_030.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_030.vcf -T D030_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_031.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_031.vcf -T D031_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_032.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_032.vcf -T D032_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_033.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_033.vcf -T D033_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_034.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_034.vcf -T D034_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_035.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_035.vcf -T D035_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_036.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_036.vcf -T D036_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_037.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_037.vcf -T D037_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_038.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_038.vcf -T D038_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_039.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_039.vcf -T D039_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_040.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_040.vcf -T D040_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_041.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_041.vcf -T D041_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_042.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_042.vcf -T D042_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_043.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_043.vcf -T D043_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_044.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_044.vcf -T D044_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_045.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_045.vcf -T D045_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_046.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_046.vcf -T D046_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_047.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_047.vcf -T D047_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_048.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_048.vcf -T D048_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_049.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_049.vcf -T D049_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_050.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_050.vcf -T D050_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_051.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_051.vcf -T D051_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_052.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_052.vcf -T D052_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_053.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_053.vcf -T D053_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_054.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_054.vcf -T D054_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_055.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_055.vcf -T D055_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_056.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_056.vcf -T D056_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_057.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_057.vcf -T D057_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_058.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_058.vcf -T D058_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_059.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_059.vcf -T D059_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_060.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_060.vcf -T D060_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_061.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_061.vcf -T D061_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_062.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_062.vcf -T D062_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_063.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_063.vcf -T D063_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_064.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_064.vcf -T D064_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_065.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_065.vcf -T D065_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_066.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_066.vcf -T D066_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_067.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_067.vcf -T D067_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_068.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_068.vcf -T D068_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_069.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_069.vcf -T D069_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_070.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_070.vcf -T D070_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_071.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_071.vcf -T D071_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_072.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_072.vcf -T D072_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_073.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_073.vcf -T D073_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_074.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_074.vcf -T D074_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_075.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_075.vcf -T D075_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_076.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_076.vcf -T D076_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_077.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_077.vcf -T D077_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_078.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_078.vcf -T D078_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_079.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_079.vcf -T D079_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_080.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_080.vcf -T D080_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_081.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_081.vcf -T D081_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_082.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_082.vcf -T D082_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_083.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_083.vcf -T D083_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_084.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_084.vcf -T D084_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_085.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_085.vcf -T D085_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_086.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_086.vcf -T D086_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_087.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_087.vcf -T D087_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_088.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_088.vcf -T D088_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_089.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_089.vcf -T D089_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_090.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_090.vcf -T D090_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_091.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_091.vcf -T D091_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_092.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_092.vcf -T D092_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_093.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_093.vcf -T D093_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_094.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_094.vcf -T D094_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_095.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_095.vcf -T D095_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_096.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_096.vcf -T D096_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_097.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_097.vcf -T D097_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_098.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_098.vcf -T D098_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_099.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_099.vcf -T D099_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_04_100.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_04_100.vcf -T D100_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_001.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_001.vcf -T E001_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_002.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_002.vcf -T E002_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_003.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_003.vcf -T E003_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_004.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_004.vcf -T E004_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_005.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_005.vcf -T E005_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_006.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_006.vcf -T E006_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_007.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_007.vcf -T E007_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_008.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_008.vcf -T E008_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_009.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_009.vcf -T E009_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_010.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_010.vcf -T E010_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_011.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_011.vcf -T E011_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_012.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_012.vcf -T E012_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_013.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_013.vcf -T E013_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_014.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_014.vcf -T E014_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_015.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_015.vcf -T E015_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_016.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_016.vcf -T E016_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_017.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_017.vcf -T E017_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_018.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_018.vcf -T E018_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_019.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_019.vcf -T E019_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_020.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_020.vcf -T E020_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_021.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_021.vcf -T E021_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_022.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_022.vcf -T E022_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_023.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_023.vcf -T E023_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_024.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_024.vcf -T E024_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_025.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_025.vcf -T E025_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_026.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_026.vcf -T E026_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_027.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_027.vcf -T E027_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_028.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_028.vcf -T E028_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_029.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_029.vcf -T E029_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_030.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_030.vcf -T E030_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_031.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_031.vcf -T E031_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_032.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_032.vcf -T E032_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_033.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_033.vcf -T E033_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_034.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_034.vcf -T E034_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_035.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_035.vcf -T E035_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_036.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_036.vcf -T E036_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_037.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_037.vcf -T E037_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_038.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_038.vcf -T E038_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_039.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_039.vcf -T E039_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_040.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_040.vcf -T E040_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_041.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_041.vcf -T E041_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_042.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_042.vcf -T E042_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_043.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_043.vcf -T E043_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_044.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_044.vcf -T E044_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_045.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_045.vcf -T E045_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_046.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_046.vcf -T E046_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_047.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_047.vcf -T E047_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_048.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_048.vcf -T E048_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_049.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_049.vcf -T E049_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_050.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_050.vcf -T E050_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_051.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_051.vcf -T E051_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_052.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_052.vcf -T E052_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_053.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_053.vcf -T E053_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_054.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_054.vcf -T E054_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_055.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_055.vcf -T E055_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_056.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_056.vcf -T E056_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_057.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_057.vcf -T E057_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_058.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_058.vcf -T E058_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_059.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_059.vcf -T E059_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_060.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_060.vcf -T E060_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_061.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_061.vcf -T E061_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_062.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_062.vcf -T E062_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_063.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_063.vcf -T E063_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_064.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_064.vcf -T E064_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_065.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_065.vcf -T E065_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_066.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_066.vcf -T E066_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_067.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_067.vcf -T E067_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_068.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_068.vcf -T E068_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_069.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_069.vcf -T E069_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_070.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_070.vcf -T E070_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_071.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_071.vcf -T E071_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_072.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_072.vcf -T E072_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_073.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_073.vcf -T E073_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_074.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_074.vcf -T E074_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_075.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_075.vcf -T E075_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_076.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_076.vcf -T E076_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_077.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_077.vcf -T E077_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_078.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_078.vcf -T E078_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_079.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_079.vcf -T E079_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_080.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_080.vcf -T E080_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_081.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_081.vcf -T E081_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_082.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_082.vcf -T E082_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_083.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_083.vcf -T E083_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_084.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_084.vcf -T E084_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_085.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_085.vcf -T E085_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_086.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_086.vcf -T E086_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_087.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_087.vcf -T E087_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_088.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_088.vcf -T E088_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_089.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_089.vcf -T E089_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_090.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_090.vcf -T E090_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_091.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_091.vcf -T E091_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_092.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_092.vcf -T E092_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_093.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_093.vcf -T E093_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_094.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_094.vcf -T E094_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_095.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_095.vcf -T E095_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_096.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_096.vcf -T E096_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_097.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_097.vcf -T E097_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_098.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_098.vcf -T E098_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_099.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_099.vcf -T E099_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_05_100.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_05_100.vcf -T E100_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_001.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_001.vcf -T F001_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_002.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_002.vcf -T F002_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_003.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_003.vcf -T F003_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_004.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_004.vcf -T F004_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_005.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_005.vcf -T F005_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_006.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_006.vcf -T F006_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_007.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_007.vcf -T F007_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_008.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_008.vcf -T F008_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_009.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_009.vcf -T F009_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_010.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_010.vcf -T F010_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_011.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_011.vcf -T F011_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_012.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_012.vcf -T F012_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_013.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_013.vcf -T F013_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_014.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_014.vcf -T F014_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_015.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_015.vcf -T F015_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_016.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_016.vcf -T F016_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_017.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_017.vcf -T F017_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_018.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_018.vcf -T F018_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_019.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_019.vcf -T F019_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_020.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_020.vcf -T F020_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_021.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_021.vcf -T F021_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_022.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_022.vcf -T F022_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_023.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_023.vcf -T F023_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_024.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_024.vcf -T F024_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_025.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_025.vcf -T F025_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_026.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_026.vcf -T F026_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_027.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_027.vcf -T F027_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_028.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_028.vcf -T F028_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_029.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_029.vcf -T F029_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_030.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_030.vcf -T F030_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_031.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_031.vcf -T F031_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_032.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_032.vcf -T F032_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_033.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_033.vcf -T F033_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_034.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_034.vcf -T F034_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_035.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_035.vcf -T F035_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_036.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_036.vcf -T F036_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_037.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_037.vcf -T F037_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_038.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_038.vcf -T F038_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_039.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_039.vcf -T F039_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_040.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_040.vcf -T F040_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_041.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_041.vcf -T F041_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_042.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_042.vcf -T F042_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_043.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_043.vcf -T F043_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_044.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_044.vcf -T F044_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_045.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_045.vcf -T F045_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_046.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_046.vcf -T F046_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_047.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_047.vcf -T F047_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_048.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_048.vcf -T F048_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_049.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_049.vcf -T F049_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_050.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_050.vcf -T F050_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_051.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_051.vcf -T F051_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_052.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_052.vcf -T F052_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_053.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_053.vcf -T F053_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_054.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_054.vcf -T F054_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_055.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_055.vcf -T F055_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_056.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_056.vcf -T F056_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_057.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_057.vcf -T F057_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_058.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_058.vcf -T F058_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_059.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_059.vcf -T F059_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_060.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_060.vcf -T F060_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_061.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_061.vcf -T F061_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_062.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_062.vcf -T F062_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_063.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_063.vcf -T F063_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_064.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_064.vcf -T F064_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_065.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_065.vcf -T F065_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_066.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_066.vcf -T F066_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_067.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_067.vcf -T F067_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_068.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_068.vcf -T F068_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_069.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_069.vcf -T F069_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_070.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_070.vcf -T F070_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_071.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_071.vcf -T F071_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_072.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_072.vcf -T F072_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_073.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_073.vcf -T F073_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_074.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_074.vcf -T F074_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_075.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_075.vcf -T F075_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_076.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_076.vcf -T F076_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_077.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_077.vcf -T F077_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_078.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_078.vcf -T F078_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_079.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_079.vcf -T F079_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_080.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_080.vcf -T F080_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_081.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_081.vcf -T F081_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_082.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_082.vcf -T F082_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_083.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_083.vcf -T F083_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_084.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_084.vcf -T F084_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_085.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_085.vcf -T F085_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_086.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_086.vcf -T F086_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_087.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_087.vcf -T F087_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_088.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_088.vcf -T F088_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_089.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_089.vcf -T F089_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_090.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_090.vcf -T F090_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_091.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_091.vcf -T F091_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_092.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_092.vcf -T F092_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_093.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_093.vcf -T F093_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_094.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_094.vcf -T F094_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_095.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_095.vcf -T F095_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_096.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_096.vcf -T F096_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_097.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_097.vcf -T F097_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_098.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_098.vcf -T F098_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_099.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_099.vcf -T F099_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_06_100.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_06_100.vcf -T F100_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_001.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_001.vcf -T G001_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_002.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_002.vcf -T G002_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_003.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_003.vcf -T G003_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_004.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_004.vcf -T G004_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_005.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_005.vcf -T G005_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_006.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_006.vcf -T G006_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_007.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_007.vcf -T G007_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_008.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_008.vcf -T G008_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_009.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_009.vcf -T G009_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_010.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_010.vcf -T G010_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_011.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_011.vcf -T G011_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_012.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_012.vcf -T G012_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_013.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_013.vcf -T G013_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_014.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_014.vcf -T G014_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_015.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_015.vcf -T G015_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_016.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_016.vcf -T G016_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_017.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_017.vcf -T G017_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_018.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_018.vcf -T G018_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_019.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_019.vcf -T G019_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_020.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_020.vcf -T G020_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_021.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_021.vcf -T G021_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_022.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_022.vcf -T G022_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_023.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_023.vcf -T G023_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_024.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_024.vcf -T G024_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_025.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_025.vcf -T G025_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_026.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_026.vcf -T G026_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_027.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_027.vcf -T G027_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_028.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_028.vcf -T G028_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_029.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_029.vcf -T G029_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_030.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_030.vcf -T G030_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_031.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_031.vcf -T G031_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_032.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_032.vcf -T G032_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_033.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_033.vcf -T G033_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_034.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_034.vcf -T G034_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_035.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_035.vcf -T G035_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_036.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_036.vcf -T G036_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_037.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_037.vcf -T G037_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_038.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_038.vcf -T G038_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_039.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_039.vcf -T G039_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_040.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_040.vcf -T G040_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_041.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_041.vcf -T G041_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_042.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_042.vcf -T G042_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_043.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_043.vcf -T G043_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_044.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_044.vcf -T G044_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_045.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_045.vcf -T G045_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_046.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_046.vcf -T G046_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_047.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_047.vcf -T G047_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_048.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_048.vcf -T G048_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_049.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_049.vcf -T G049_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_050.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_050.vcf -T G050_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_051.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_051.vcf -T G051_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_052.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_052.vcf -T G052_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_053.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_053.vcf -T G053_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_054.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_054.vcf -T G054_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_055.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_055.vcf -T G055_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_056.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_056.vcf -T G056_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_057.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_057.vcf -T G057_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_058.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_058.vcf -T G058_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_059.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_059.vcf -T G059_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_060.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_060.vcf -T G060_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_061.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_061.vcf -T G061_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_062.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_062.vcf -T G062_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_063.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_063.vcf -T G063_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_064.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_064.vcf -T G064_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_065.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_065.vcf -T G065_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_066.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_066.vcf -T G066_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_067.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_067.vcf -T G067_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_068.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_068.vcf -T G068_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_069.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_069.vcf -T G069_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_070.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_070.vcf -T G070_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_071.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_071.vcf -T G071_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_072.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_072.vcf -T G072_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_073.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_073.vcf -T G073_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_074.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_074.vcf -T G074_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_075.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_075.vcf -T G075_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_076.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_076.vcf -T G076_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_077.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_077.vcf -T G077_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_078.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_078.vcf -T G078_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_079.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_079.vcf -T G079_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_080.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_080.vcf -T G080_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_081.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_081.vcf -T G081_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_082.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_082.vcf -T G082_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_083.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_083.vcf -T G083_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_084.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_084.vcf -T G084_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_085.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_085.vcf -T G085_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_086.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_086.vcf -T G086_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_087.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_087.vcf -T G087_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_088.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_088.vcf -T G088_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_089.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_089.vcf -T G089_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_090.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_090.vcf -T G090_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_091.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_091.vcf -T G091_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_092.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_092.vcf -T G092_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_093.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_093.vcf -T G093_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_094.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_094.vcf -T G094_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_095.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_095.vcf -T G095_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_096.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_096.vcf -T G096_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_097.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_097.vcf -T G097_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_098.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_098.vcf -T G098_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_099.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_099.vcf -T G099_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_07_100.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_07_100.vcf -T G100_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_001.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_001.vcf -T H001_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_002.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_002.vcf -T H002_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_003.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_003.vcf -T H003_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_004.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_004.vcf -T H004_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_005.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_005.vcf -T H005_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_006.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_006.vcf -T H006_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_007.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_007.vcf -T H007_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_008.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_008.vcf -T H008_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_009.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_009.vcf -T H009_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_010.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_010.vcf -T H010_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_011.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_011.vcf -T H011_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_012.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_012.vcf -T H012_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_013.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_013.vcf -T H013_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_014.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_014.vcf -T H014_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_015.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_015.vcf -T H015_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_016.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_016.vcf -T H016_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_017.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_017.vcf -T H017_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_018.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_018.vcf -T H018_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_019.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_019.vcf -T H019_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_020.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_020.vcf -T H020_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_021.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_021.vcf -T H021_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_022.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_022.vcf -T H022_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_023.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_023.vcf -T H023_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_024.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_024.vcf -T H024_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_025.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_025.vcf -T H025_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_026.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_026.vcf -T H026_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_027.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_027.vcf -T H027_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_028.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_028.vcf -T H028_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_029.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_029.vcf -T H029_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_030.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_030.vcf -T H030_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_031.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_031.vcf -T H031_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_032.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_032.vcf -T H032_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_033.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_033.vcf -T H033_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_034.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_034.vcf -T H034_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_035.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_035.vcf -T H035_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_036.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_036.vcf -T H036_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_037.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_037.vcf -T H037_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_038.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_038.vcf -T H038_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_039.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_039.vcf -T H039_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_040.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_040.vcf -T H040_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_041.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_041.vcf -T H041_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_042.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_042.vcf -T H042_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_043.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_043.vcf -T H043_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_044.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_044.vcf -T H044_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_045.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_045.vcf -T H045_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_046.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_046.vcf -T H046_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_047.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_047.vcf -T H047_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_048.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_048.vcf -T H048_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_049.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_049.vcf -T H049_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_050.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_050.vcf -T H050_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_051.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_051.vcf -T H051_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_052.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_052.vcf -T H052_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_053.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_053.vcf -T H053_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_054.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_054.vcf -T H054_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_055.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_055.vcf -T H055_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_056.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_056.vcf -T H056_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_057.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_057.vcf -T H057_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_058.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_058.vcf -T H058_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_059.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_059.vcf -T H059_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_060.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_060.vcf -T H060_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_061.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_061.vcf -T H061_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_062.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_062.vcf -T H062_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_063.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_063.vcf -T H063_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_064.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_064.vcf -T H064_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_065.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_065.vcf -T H065_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_066.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_066.vcf -T H066_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_067.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_067.vcf -T H067_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_068.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_068.vcf -T H068_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_069.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_069.vcf -T H069_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_070.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_070.vcf -T H070_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_071.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_071.vcf -T H071_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_072.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_072.vcf -T H072_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_073.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_073.vcf -T H073_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_074.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_074.vcf -T H074_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_075.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_075.vcf -T H075_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_076.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_076.vcf -T H076_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_077.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_077.vcf -T H077_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_078.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_078.vcf -T H078_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_079.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_079.vcf -T H079_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_080.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_080.vcf -T H080_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_081.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_081.vcf -T H081_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_082.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_082.vcf -T H082_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_083.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_083.vcf -T H083_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_084.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_084.vcf -T H084_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_085.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_085.vcf -T H085_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_086.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_086.vcf -T H086_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_087.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_087.vcf -T H087_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_088.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_088.vcf -T H088_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_089.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_089.vcf -T H089_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_090.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_090.vcf -T H090_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_091.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_091.vcf -T H091_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_092.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_092.vcf -T H092_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_093.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_093.vcf -T H093_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_094.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_094.vcf -T H094_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_095.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_095.vcf -T H095_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_096.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_096.vcf -T H096_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_097.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_097.vcf -T H097_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_098.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_098.vcf -T H098_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_099.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_099.vcf -T H099_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_08_100.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_08_100.vcf -T H100_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_001.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_001.vcf -T I001_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_002.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_002.vcf -T I002_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_003.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_003.vcf -T I003_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_004.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_004.vcf -T I004_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_005.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_005.vcf -T I005_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_006.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_006.vcf -T I006_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_007.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_007.vcf -T I007_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_008.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_008.vcf -T I008_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_009.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_009.vcf -T I009_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_010.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_010.vcf -T I010_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_011.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_011.vcf -T I011_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_012.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_012.vcf -T I012_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_013.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_013.vcf -T I013_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_014.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_014.vcf -T I014_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_015.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_015.vcf -T I015_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_016.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_016.vcf -T I016_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_017.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_017.vcf -T I017_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_018.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_018.vcf -T I018_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_019.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_019.vcf -T I019_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_020.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_020.vcf -T I020_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_021.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_021.vcf -T I021_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_022.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_022.vcf -T I022_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_023.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_023.vcf -T I023_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_024.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_024.vcf -T I024_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_025.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_025.vcf -T I025_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_026.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_026.vcf -T I026_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_027.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_027.vcf -T I027_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_028.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_028.vcf -T I028_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_029.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_029.vcf -T I029_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_030.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_030.vcf -T I030_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_031.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_031.vcf -T I031_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_032.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_032.vcf -T I032_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_033.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_033.vcf -T I033_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_034.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_034.vcf -T I034_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_035.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_035.vcf -T I035_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_036.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_036.vcf -T I036_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_037.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_037.vcf -T I037_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_038.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_038.vcf -T I038_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_039.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_039.vcf -T I039_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_040.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_040.vcf -T I040_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_041.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_041.vcf -T I041_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_042.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_042.vcf -T I042_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_043.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_043.vcf -T I043_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_044.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_044.vcf -T I044_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_045.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_045.vcf -T I045_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_046.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_046.vcf -T I046_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_047.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_047.vcf -T I047_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_048.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_048.vcf -T I048_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_049.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_049.vcf -T I049_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_050.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_050.vcf -T I050_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_051.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_051.vcf -T I051_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_052.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_052.vcf -T I052_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_053.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_053.vcf -T I053_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_054.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_054.vcf -T I054_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_055.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_055.vcf -T I055_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_056.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_056.vcf -T I056_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_057.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_057.vcf -T I057_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_058.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_058.vcf -T I058_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_059.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_059.vcf -T I059_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_060.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_060.vcf -T I060_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_061.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_061.vcf -T I061_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_062.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_062.vcf -T I062_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_063.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_063.vcf -T I063_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_064.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_064.vcf -T I064_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_065.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_065.vcf -T I065_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_066.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_066.vcf -T I066_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_067.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_067.vcf -T I067_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_068.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_068.vcf -T I068_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_069.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_069.vcf -T I069_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_070.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_070.vcf -T I070_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_071.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_071.vcf -T I071_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_072.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_072.vcf -T I072_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_073.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_073.vcf -T I073_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_074.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_074.vcf -T I074_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_075.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_075.vcf -T I075_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_076.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_076.vcf -T I076_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_077.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_077.vcf -T I077_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_078.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_078.vcf -T I078_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_079.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_079.vcf -T I079_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_080.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_080.vcf -T I080_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_081.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_081.vcf -T I081_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_082.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_082.vcf -T I082_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_083.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_083.vcf -T I083_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_084.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_084.vcf -T I084_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_085.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_085.vcf -T I085_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_086.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_086.vcf -T I086_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_087.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_087.vcf -T I087_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_088.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_088.vcf -T I088_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_089.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_089.vcf -T I089_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_090.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_090.vcf -T I090_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_091.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_091.vcf -T I091_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_092.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_092.vcf -T I092_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_093.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_093.vcf -T I093_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_094.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_094.vcf -T I094_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_095.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_095.vcf -T I095_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_096.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_096.vcf -T I096_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_097.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_097.vcf -T I097_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_098.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_098.vcf -T I098_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_099.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_099.vcf -T I099_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_09_100.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_09_100.vcf -T I100_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_001.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_001.vcf -T J001_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_002.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_002.vcf -T J002_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_003.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_003.vcf -T J003_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_004.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_004.vcf -T J004_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_005.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_005.vcf -T J005_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_006.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_006.vcf -T J006_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_007.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_007.vcf -T J007_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_008.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_008.vcf -T J008_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_009.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_009.vcf -T J009_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_010.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_010.vcf -T J010_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_011.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_011.vcf -T J011_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_012.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_012.vcf -T J012_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_013.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_013.vcf -T J013_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_014.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_014.vcf -T J014_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_015.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_015.vcf -T J015_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_016.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_016.vcf -T J016_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_017.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_017.vcf -T J017_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_018.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_018.vcf -T J018_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_019.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_019.vcf -T J019_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_020.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_020.vcf -T J020_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_021.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_021.vcf -T J021_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_022.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_022.vcf -T J022_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_023.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_023.vcf -T J023_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_024.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_024.vcf -T J024_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_025.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_025.vcf -T J025_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_026.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_026.vcf -T J026_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_027.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_027.vcf -T J027_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_028.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_028.vcf -T J028_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_029.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_029.vcf -T J029_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_030.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_030.vcf -T J030_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_031.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_031.vcf -T J031_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_032.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_032.vcf -T J032_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_033.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_033.vcf -T J033_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_034.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_034.vcf -T J034_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_035.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_035.vcf -T J035_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_036.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_036.vcf -T J036_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_037.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_037.vcf -T J037_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_038.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_038.vcf -T J038_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_039.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_039.vcf -T J039_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_040.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_040.vcf -T J040_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_041.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_041.vcf -T J041_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_042.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_042.vcf -T J042_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_043.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_043.vcf -T J043_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_044.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_044.vcf -T J044_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_045.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_045.vcf -T J045_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_046.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_046.vcf -T J046_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_047.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_047.vcf -T J047_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_048.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_048.vcf -T J048_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_049.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_049.vcf -T J049_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_050.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_050.vcf -T J050_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_051.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_051.vcf -T J051_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_052.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_052.vcf -T J052_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_053.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_053.vcf -T J053_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_054.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_054.vcf -T J054_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_055.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_055.vcf -T J055_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_056.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_056.vcf -T J056_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_057.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_057.vcf -T J057_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_058.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_058.vcf -T J058_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_059.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_059.vcf -T J059_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_060.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_060.vcf -T J060_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_061.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_061.vcf -T J061_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_062.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_062.vcf -T J062_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_063.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_063.vcf -T J063_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_064.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_064.vcf -T J064_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_065.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_065.vcf -T J065_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_066.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_066.vcf -T J066_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_067.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_067.vcf -T J067_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_068.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_068.vcf -T J068_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_069.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_069.vcf -T J069_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_070.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_070.vcf -T J070_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_071.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_071.vcf -T J071_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_072.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_072.vcf -T J072_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_073.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_073.vcf -T J073_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_074.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_074.vcf -T J074_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_075.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_075.vcf -T J075_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_076.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_076.vcf -T J076_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_077.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_077.vcf -T J077_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_078.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_078.vcf -T J078_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_079.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_079.vcf -T J079_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_080.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_080.vcf -T J080_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_081.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_081.vcf -T J081_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_082.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_082.vcf -T J082_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_083.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_083.vcf -T J083_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_084.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_084.vcf -T J084_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_085.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_085.vcf -T J085_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_086.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_086.vcf -T J086_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_087.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_087.vcf -T J087_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_088.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_088.vcf -T J088_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_089.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_089.vcf -T J089_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_090.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_090.vcf -T J090_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_091.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_091.vcf -T J091_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_092.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_092.vcf -T J092_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_093.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_093.vcf -T J093_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_094.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_094.vcf -T J094_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_095.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_095.vcf -T J095_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_096.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_096.vcf -T J096_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_097.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_097.vcf -T J097_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_098.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_098.vcf -T J098_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_099.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_099.vcf -T J099_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile
echo $vcfdir/case_100k_bin_10_100.vcf >> $logfile
$scriptdir/../../bin/bvd-add.pl -s $vcfdir/case_100k_bin_10_100.vcf -T J100_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile

