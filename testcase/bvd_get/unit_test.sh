#!/bin/bash

scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$scriptdir/case_bvd_get_01/validate_result.sh
$scriptdir/case_bvd_get_02/validate_result.sh
$scriptdir/case_bvd_get_03/validate_result.sh
$scriptdir/case_bvd_get_04/validate_result.sh
$scriptdir/case_bvd_get_05/validate_result.sh
$scriptdir/case_bvd_get_06/validate_result.sh


