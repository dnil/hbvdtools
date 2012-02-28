#!/bin/bash -l
#SBATCH -A b2011026
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 3-8:00:00
#SBATCH -J coca_pf_04

starttime=$(date +%s)

#scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#vcfdir=$scriptdir
#dbdir=$vcfdir

scriptdir="/bubo/home/h10/jessada/private/hbvdb/testcase/performance"
dbdir="/glob/jessada/private/DB/case_100k_bin"

logfile=$scriptdir/out/case_performance_04_out.txt
if [ -e $logfile ]
then
	rm $logfile
fi

$scriptdir/../../bin/bvd-get.pl -T A010_cancer,B010_cancer,C010_cancer,D010_cancer,E010_cancer,F010_cancer,G010_cancer,H010_cancer,I010_cancer,J010_cancer,A020_cancer,B020_cancer,C020_cancer,D020_cancer,E020_cancer,F020_cancer,G020_cancer,H020_cancer,I020_cancer,J020_cancer,A030_cancer,B030_cancer,C030_cancer,D030_cancer,E030_cancer,F030_cancer,G030_cancer,H030_cancer,I030_cancer,J030_cancer,A040_cancer,B040_cancer,C040_cancer,D040_cancer,E040_cancer,F040_cancer,G040_cancer,H040_cancer,I040_cancer,J040_cancer,A050_cancer,B050_cancer,C050_cancer,D050_cancer,E050_cancer,F050_cancer,G050_cancer,H050_cancer,I050_cancer,J050_cancer,A060_cancer,B060_cancer,C060_cancer,D060_cancer,E060_cancer,F060_cancer,G060_cancer,H060_cancer,I060_cancer,J060_cancer,A070_cancer,B070_cancer,C070_cancer,D070_cancer,E070_cancer,F070_cancer,G070_cancer,H070_cancer,I070_cancer,J070_cancer,A080_cancer,B080_cancer,C080_cancer,D080_cancer,E080_cancer,F080_cancer,G080_cancer,H080_cancer,I080_cancer,J080_cancer,A090_cancer,B090_cancer,C090_cancer,D090_cancer,E090_cancer,F090_cancer,G090_cancer,H090_cancer,I090_cancer,J090_cancer,A100_cancer,B100_cancer,C100_cancer,D100_cancer,E100_cancer,F100_cancer,G100_cancer,H100_cancer,I100_cancer,J100_cancer  -d $dbdir
endtime=$(date +%s)
timediff=$((endtime-starttime))
echo total excutetime so far $timediff seconds >> $logfile


