#!/usr/bin/env bats

source $QP_ROOT/tests/bats/common.bats.sh


function run() {
  thresh=1.e-8
  test_exe scf || skip
  qp_edit -c $1
  ezfio set_file $1
  ezfio set scf_utils thresh_scf 1.e-10
  qp_run scf $1
  energy="$(ezfio get hartree_fock energy)"
  eq $energy $2 $thresh
}



@test "SCF DHNO chipman-dzp" {
  run  dhno.ezfio  -130.4278777822   
}

@test "SCF HBO STO-3G" {
  run  hbo.ezfio  -98.8251985678084 
}

@test "SCF H2O cc-pVDZ" {
  run  h2o.ezfio  -0.760270218692179E+02
}


