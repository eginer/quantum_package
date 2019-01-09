#!/usr/bin/env bats

source $QP_ROOT/tests/bats/common.bats.sh

function run() {
  thresh=$3
  test_exe fci || skip
  qp_edit -c $1
  ezfio set_file $1
  ezfio set determinants n_det_max 8000
  ezfio set determinants n_states  1
  ezfio set davidson threshold_davidson 1.e-10
  ezfio set davidson n_states_diag 8
  qp_run fci $1
  energy1="$(ezfio get fci energy | tr '[]' ' ' | cut -d ',' -f 1)"
  eq $energy1 $2 $thresh
}




@test "NH3" { # 10.6657s
  qp_set_mo_class nh3.ezfio -core "[1-4]" -act "[5-72]"
  run nh3.ezfio -56.2447484821590 1.e-5
}

@test "DHNO" { # 11.4721s
  qp_set_mo_class dhno.ezfio -core "[1-7]" -act "[8-64]" 
  run dhno.ezfio -130.45902272485 1.e-5
}

@test "HCO" { # 12.2868s
  run hco.ezfio -113.297580169167 1.444e-05 
}

@test "H2O2" { # 12.9214s
  qp_set_mo_class h2o2.ezfio -core "[1-2]" -act "[3-24]" -del "[25-38]"
  run h2o2.ezfio -151.004593814816 0.00011948 
}

@test "HBO" { # 13.3144s
  run  hbo.ezfio  -100.213113590746 1.36e-05
}

@test "H2O" { # 11.3727s
  run  h2o.ezfio  -76.2358876720796  1.988e-05 
}

@test "ClO" { # 13.3755s
  run clo.ezfio -534.545851735243 0.00019344
}

@test "SO" { # 13.4952s
  run so.ezfio -26.0118045926651 0.00014494
}

@test "H2S" { # 13.6745s
  [[ -n $TRAVIS ]] && skip
  run h2s.ezfio -398.859198067009 8.46e-06
}

@test "OH" { # 13.865s 
  [[ -n $TRAVIS ]] && skip
  run oh.ezfio -75.6120973654659 1.744e-05 
}

@test "SiH2_3B1" { # 13.938ss
  [[ -n $TRAVIS ]] && skip
  run sih2_3b1.ezfio -290.017547995946 1.e-5
}

@test "H3COH" { # 14.7299s
  [[ -n $TRAVIS ]] && skip
  run h3coh.ezfio  -115.200348295051 0.00018132
}

@test "SiH3" { # 15.99s
  [[ -n $TRAVIS ]] && skip
  run sih3.ezfio -5.57259338826877 1.116e-05 
}

@test "CH4" { # 16.1612s
  [[ -n $TRAVIS ]] && skip
  qp_set_mo_class ch4.ezfio -core "[1]" -act "[2-30]" -del "[31-59]"
  run ch4.ezfio -40.2410273920655 3.02e-06
}

@test "ClF" { # 16.8864s
  [[ -n $TRAVIS ]] && skip
  run clf.ezfio  -559.171627972338 0.00021062
}

@test "SO2" { # 17.5645s
  [[ -n $TRAVIS ]] && skip
  qp_set_mo_class so2.ezfio -core "[1-8]" -act "[9-87]" 
  run so2.ezfio -41.5746738710646 1.e-5
}

@test "C2H2" { # 17.6827s
  [[ -n $TRAVIS ]] && skip
  qp_set_mo_class c2h2.ezfio -act "[1-30]" -del "[31-36]"
  run c2h2.ezfio -12.3681909988587 9.402e-05 
}

@test "N2" { # 18.0198s
  [[ -n $TRAVIS ]] && skip
  qp_set_mo_class n2.ezfio -core "[1,2]" -act "[3-40]" -del "[41-60]"
  run n2.ezfio -109.291407960731 0.00010052
}

@test "N2H4" { # 18.5006s
  [[ -n $TRAVIS ]] && skip
  qp_set_mo_class n2h4.ezfio -core "[1-2]" -act "[3-24]" -del "[25-48]"
  run n2h4.ezfio -111.367266319251 0.00010255
}

@test "CO2" { # 21.1748s
  [[ -n $TRAVIS ]] && skip
  qp_set_mo_class co2.ezfio -core "[1,2]" -act "[3-30]" -del "[31-42]"
  run co2.ezfio -187.968251806361 0.00028902
}

@test "F2" { # 21.331s
  [[ -n $TRAVIS ]] && skip
  qp_set_mo_class f2.ezfio -core "[1,2]" -act "[3-30]" -del "[31-62]"
  run f2.ezfio  -199.068698950474 0.00014534
}

@test "[Cu(NH3)4]2+" { # 25.0417s
  [[ -n $TRAVIS ]] && skip
  qp_set_mo_class cu_nh3_4_2plus.ezfio -core "[1-24]" -act "[25-45]" -del "[46-87]"
  run  cu_nh3_4_2plus.ezfio -1862.98632761077  5.e-07
}

@test "HCN" { # 20.3273s
  [[ -n $TRAVIS ]] && skip
  qp_set_mo_class hcn.ezfio -core "[1,2]" -act "[3-40]" -del "[41-55]"
  run hcn.ezfio -93.0774580352237 0.00016522
}

