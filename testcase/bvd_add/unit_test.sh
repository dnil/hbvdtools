#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$scriptdir/case_bvd_add_01/validate_result.sh
$scriptdir/case_bvd_add_02/validate_result.sh
$scriptdir/case_bvd_add_03/validate_result.sh
$scriptdir/case_bvd_add_04/validate_result.sh
$scriptdir/case_bvd_add_05/validate_result.sh
$scriptdir/case_bvd_add_06/validate_result.sh
$scriptdir/case_bvd_add_07/validate_result.sh


