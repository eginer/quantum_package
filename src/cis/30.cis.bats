#!/usr/bin/env bats

source $QP_ROOT/tests/bats/common.bats.sh

function run_CIS() {
  thresh=5.e-9
  test_exe cis || skip
  qp_edit -c $1
  ezfio set_file $1
  ezfio set determinants n_states  3
  ezfio set davidson threshold_davidson 1.e-10

  qp_run cis $1
  energy1="$(ezfio get cis energy | tr '[]' ' ' | cut -d ',' -f 1)"
  energy2="$(ezfio get cis energy | tr '[]' ' ' | cut -d ',' -f 2)"
  energy3="$(ezfio get cis energy | tr '[]' ' ' | cut -d ',' -f 3)"
  eq $energy1 $2 $thresh
  eq $energy2 $3 $thresh
  eq $energy3 $4 $thresh
}



#=== H2O

@test "qp_set_mo_class H2O cc-pVDZ" {
  qp_set_mo_class h2o.ezfio -core "[1]" -act "[2-12]" -del "[13-24]"
}

@test "CIS H2O cc-pVDZ" {
  run_CIS h2o.ezfio -76.0270218693035 -75.6812512934229 -75.6174524564961
}

@test "CIS H2O VDZ pseudo" {
  qp_set_frozen_core h2o_pseudo.ezfio
  run_CIS h2o_pseudo.ezfio -16.9483703905542 -16.5790993717898 -16.5074569116264
}

