#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$scriptdir/bvd_add/unit_test.sh
$scriptdir/bvd_get/unit_test.sh
$scriptdir/bvd_merge/unit_test.sh
$scriptdir/normalize_vcf/unit_test.sh


