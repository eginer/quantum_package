#!/usr/bin/env bats

source $QP_ROOT/tests/bats/common.bats.sh

function run_CISD() {
  thresh=5.e-9
  test_exe cisd || skip
  qp_edit -c $1
  ezfio set_file $1
  ezfio set determinants n_states  2
  ezfio set davidson threshold_davidson 1.e-10

  qp_run cisd $1
  energy1="$(ezfio get cisd energy | tr '[]' ' ' | cut -d ',' -f 1)"
  energy2="$(ezfio get cisd energy | tr '[]' ' ' | cut -d ',' -f 2)"
  eq $energy1 $2 $thresh
  eq $energy2 $3 $thresh
}



#=== H2O

@test "qp_set_mo_class H2O cc-pVDZ" {
  qp_set_mo_class h2o.ezfio -core "[1]" -act "[2-12]" -del "[13-24]"
}

@test "CISD H2O cc-pVDZ" {
  run_CISD h2o.ezfio -76.1220030371248 -75.7704139046496
}

@test "CISD H2O VDZ pseudo" {
  qp_set_frozen_core h2o_pseudo.ezfio
  run_CISD h2o_pseudo.ezfio -17.1526088241466 -16.6975854682481
}

