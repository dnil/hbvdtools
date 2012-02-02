#!/bin/bash

cp tmp_header "case5_"$2".vcf"
grep "^8" $1 | awk '{print "10\t" $1 "\t.	G	A	59.5	.	DP=6;AF1=1;AC1=2;DP4=0,0,1,3;MQ=39;FQ=-39	GT:PL:GQ	1/1:92,12,0:21";}' >> "case5_"$2".vcf"
