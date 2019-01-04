#!/usr/bin/env bats

source $QP_ROOT/tests/bats/common.bats.sh

function run {
  local INPUT=$1
  local EZ=$2
  cp ${QP_ROOT}/tests/input/$INPUT .
  qp_convert_output_to_ezfio $INPUT -o $EZ
  qp_edit -c $EZ
  ezfio set_file $EZ
  ezfio set scf_utils thresh_scf 1.e-12
  echo "Write" > ${EZ}/ao_two_e_integrals/disk_access_ao_integrals
}

@test "HBO GAMESS" {
  run hbo.gms.out hbo.ezfio
}

@test "H2O G09" {
  run h2o.log h2o.ezfio
}

@test "[Cu(NH3)4]2+ GAMESS" {
  run cu_nh3_4_2plus.gms.out  cu_nh3_4_2plus.ezfio
  ezfio set scf_utils thresh_scf 1.e-10
}
