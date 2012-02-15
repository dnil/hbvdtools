#!/bin/bash

grep "^8" $1 | awk '{print "10\t"$1"\t"$1"\tG\tA\t"$2;}'
