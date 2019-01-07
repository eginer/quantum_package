#!/usr/bin/env bats

source $QP_ROOT/tests/bats/common.bats.sh


function run() {
  thresh=1.e-8
  qp_edit -c $1
  ezfio set_file $1
  ezfio set scf_utils thresh_scf 1.e-10
  ezfio set dft_keywords exchange_functional "short_range_PBE" 
  ezfio set dft_keywords correlation_functional "short_range_PBE" 
  ezfio set ao_two_e_erf_ints mu_erf 0.5
  ezfio set becke_numerical_grid grid_type_sgn 1 
  qp_run rs_ks_scf $1
  energy="$(ezfio get kohn_sham_rs energy)"
  eq $energy $2 $thresh
}


@test "H3COH" { # 11.4566s
  run h3coh.ezfio -115.50238225208
}

@test "N2" { # 18.2364s
  run n2.ezfio -109.404692225719
}

@test "HCN" { # 28.801s
  run hcn.ezfio -93.26674673761752
}

@test "SiH2_3B1" { # 82.3904s
  [[ -n $TRAVIS ]] && skip
  run sih2_3b1.ezfio -290.372258160809
}


