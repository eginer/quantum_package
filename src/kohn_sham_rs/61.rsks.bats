#!/usr/bin/env bats

source $QP_ROOT/tests/bats/common.bats.sh


function run() {
  thresh=1.e-8
  qp_edit -c $1
  functional=$2
  ezfio set_file $1
  ezfio set scf_utils thresh_scf 1.e-10
  ezfio set dft_keywords exchange_functional $functional
  ezfio set dft_keywords correlation_functional $functional
  ezfio set ao_two_e_erf_ints mu_erf 0.5 
  ezfio set becke_numerical_grid grid_type_sgn 1 
  qp_run rs_ks_scf $1
  energy="$(ezfio get kohn_sham_rs energy)"
  eq $energy $3 $thresh
}


@test "H3COH" {
  run h3coh.ezfio short_range_PBE -115.50238225208
}

@test "HCN" {
  run hcn.ezfio short_range_PBE -93.26674673761752
}

@test "N2" {
  run n2.ezfio  short_range_PBE -109.404692225719
}

@test "SiH2_3B1" {
  run sih2_3b1.ezfio short_range_LDA -289.4398733527755
}


