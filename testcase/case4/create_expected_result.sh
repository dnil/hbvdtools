#!/bin/bash

grep "^8" raw_expected_result | awk '{print "10\t" $1 "\tG\tA\ttotal="$2":colon_cancer,lung_cancer="$3":lung_cancer="$4":prostate_cancer="$5;}'
