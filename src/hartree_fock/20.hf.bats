#!/usr/bin/env bats

source $QP_ROOT/tests/bats/common.bats.sh


function run() {
  thresh=1.e-8
  qp_edit -c $1
  ezfio set_file $1
  ezfio set scf_utils thresh_scf 1.e-10
  qp_run scf $1
  qp_set_frozen_core $1
  energy="$(ezfio get hartree_fock energy)"
  eq $energy $2 $thresh
}



@test "SCF HBO" {
  run  hbo.ezfio  -100.018582259096 
}

@test "SCF H2O" {
  run  h2o.ezfio  -0.760270218692179E+02
}

@test "SCF H2O" {
  run  cu_nh3_4_2plus.ezfio -1862.97590388214
}

@test "SCF DHNO chipman-dzp" {
  run  dhno.ezfio  -130.4278777822   
}


