#!/usr/bin/env bats

source $QP_ROOT/tests/bats/common.bats.sh

function run {
  local INPUT=$1
  local EZ=$2
  cp ${QP_ROOT}/tests/input/$INPUT .
  qp_convert_output_to_ezfio $INPUT -o $EZ
  qp_edit -c $EZ
  echo "Write" > ${EZ}/ao_two_e_integrals/disk_access_ao_integrals
}

#=== Convert
@test "gamess convert hbo.gms.out" {
  run hbo.gms.out hbo.ezfio
}

@test "g09 convert h2o.log" {
  run h2o.log h2o.ezfio
}

@test "gamess convert cu_nh3_4_2plus.gms.out" {
  run cu_nh3_4_2plus.gms.out  cu_nh3_4_2plus.ezfio
}
