#!/usr/bin/env bats

source $QP_ROOT/tests/bats/common.bats.sh

function run_FCI() {
  thresh=5.e-5
  test_exe fci || skip
  qp_edit -c $1
  ezfio set_file $1
  ezfio set perturbation do_pt2 True
  ezfio set perturbation pt2_relative_error 0.001
  ezfio set determinants n_det_max $2
  ezfio set davidson threshold_davidson 1.e-10

  qp_run fci $1
  energy="$(ezfio get FCI energy | tr '[]' ' ')"
  eq $energy $3 $thresh
  energy_pt2="$(ezfio get FCI energy_pt2 | tr '[]' ' ')"
  eq $energy_pt2 $4 $thresh
}



#=== H2O

@test "qp_set_mo_class H2O cc-pVDZ" {
  qp_set_mo_class h2o.ezfio -core "[1]" -act "[2-12]" -del "[13-24]"
}

@test "FCI H2O cc-pVDZ" {
  run_FCI h2o.ezfio 2000 -76.1249493055975   -76.1258779921351
}

@test "FCI H2O VDZ pseudo" {
  qp_set_mo_class h2o_pseudo.ezfio -core "[1]" -act "[2-12]" -del "[13-23]"
  run_FCI h2o_pseudo.ezfio 2000    -17.0399259074535 -17.0400550838545
}

