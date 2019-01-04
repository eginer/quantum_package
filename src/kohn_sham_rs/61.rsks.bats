#!/usr/bin/env bats

source $QP_ROOT/tests/bats/common.bats.sh


function run() {
  thresh=1.e-8
  qp_edit -c $1
  ezfio set_file $1
  ezfio set scf_utils thresh_scf 1.e-10
  echo "short_range_PBE" > $1/dft_keywords/exchange_functional 
  echo "short_range_PBE" > $1/dft_keywords/correlation_functional 
  echo "0.5"             > $1/ao_two_e_erf_integrals/mu_erf
  echo "1"               > $1/becke_numerical_grid/grid_type_sgn 
  qp_run rs_ks_scf $1
  energy="$(ezfio get kohn_sham_rs energy)"
  eq $energy $2 $thresh
}



@test "H3COH" {
  run h3coh.ezfio -115.50238225208
}

@test "HCN" {
  run hcn.ezfio -93.26674673761752
}

@test "N2" {
  run n2.ezfio -109.404692225719
}

@test "SiH2_3B1" {
  run sih2_3b1.ezfio -290.371745382958
}

