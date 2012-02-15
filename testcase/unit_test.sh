#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$scriptdir/case1/validate_result.sh
$scriptdir/case2/validate_result.sh
$scriptdir/case3/validate_result.sh
$scriptdir/case4/validate_result.sh
$scriptdir/case5/validate_result.sh
$scriptdir/case6/validate_result.sh
$scriptdir/case7/validate_result.sh
$scriptdir/case8/validate_result.sh
$scriptdir/case9/validate_result.sh

