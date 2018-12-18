#!/usr/bin/env bats

source $QP_ROOT/tests/bats/common.bats.sh

function run_init() {
  cp "${QP_ROOT}/tests/input/$1" .
  qp_create_ezfio_from_xyz $1 -o $3 $2
  qp_edit -c $3
}


function run_HF() {
  thresh=1.e-7
  test_exe SCF || skip
  qp_edit -c $1
  ezfio set_file $1
  ezfio set hartree_fock thresh_scf 2.e-8
  qp_run scf $1
  energy="$(ezfio get hartree_fock energy)"
  eq $energy $2 $thresh
}


function run_FCI() {
  thresh=5.e-5
  test_exe FCI || skip
  qp_edit -c $1
  ezfio set_file $1
  ezfio set perturbation do_pt2 True
  ezfio set determinants n_det_max $2
  ezfio set davidson threshold_davidson 1.e-10

  qp_run fci $1
  energy="$(ezfio get FCI energy | tr '[]' ' ')"
  eq $energy $3 $thresh
  energy_pt2="$(ezfio get FCI energy_pt2 | tr '[]' ' ')"
  eq $energy_pt2 $4 $thresh
}

#=== H2O Pseudo
@test "init H2O VDZ pseudo" {
  run_init h2o.xyz "-p bfd -b vdz-bfd" h2o_pseudo.ezfio
}

@test "SCF H2O VDZ pseudo" {
  run_HF  h2o_pseudo.ezfio  -16.9483703905461
}

@test "FCI H2O VDZ pseudo" {
  qp_set_mo_class h2o_pseudo.ezfio -core "[1]" -act "[2-12]" -del "[13-23]"
  run_FCI h2o_pseudo.ezfio 2000    -17.0399259074535 -17.0400550838545
}

