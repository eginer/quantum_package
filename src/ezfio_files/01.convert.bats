#!/usr/bin/env bats

source $QP_ROOT/tests/bats/common.bats.sh

function run {
  INPUT=$1
  EZ=${INPUT}.ezfio
  cp ${QP_ROOT}/tests/input/$INPUT .
  qp_convert_output_to_ezfio $INPUT
  qp_edit -c $EZ
}

#=== Convert
@test "gamess convert hbo.gms.out" {
  run hbo.gms.out 
}

@test "g09 convert h2o.log" {
  run h2o.log 
}

@test "gamess convert cu_nh3_4_2plus.gms.out" {
  run cu_nh3_4_2plus.gms.out 
}
