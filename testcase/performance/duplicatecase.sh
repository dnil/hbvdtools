#!/bin/bash


starttime=$(date +%s)
#scriptdir='/home/jessada/development/thesis/hbvdb/testcase/performance/factory/case03'
scriptdir='/bubo/home/h10/jessada/private/hbvdb/testcase/performance/factory/case03'

for i in {1..100}
do
	k=`printf "%03i\n" $i`
        l=`printf "%02i\n" $2`
	echo $1 $k $l $scriptdir/case_100k_bin_$l'_'$k'.vcf'
	perl -p -e 's/case1_1/case'$l'_'$k'/g' $1 > $scriptdir/case_100k_bin_$l'_'$k'.vcf'
done

