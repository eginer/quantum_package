#!/usr/bin/env bats

source $QP_ROOT/tests/bats/common.bats.sh


function run() {
  thresh=1.e-8
  test_exe scf || skip
  qp_edit -c $1
  ezfio set_file $1
  ezfio set scf_utils thresh_scf 1.e-10
  qp_run scf $1
  qp_set_frozen_core $1
  energy="$(ezfio get hartree_fock energy)"
  eq $energy $2 $thresh
}



@test "HBO" {
  run  hbo.ezfio  -100.018582259096 
}

@test "H2O" {
  run  h2o.ezfio  -0.760270218692179E+02
}

@test "[Cu(NH3)4]2+" {
  run  cu_nh3_4_2plus.ezfio -1862.97590388214
}

@test "C2H2" {
  run c2h2.ezfio -12.12144019495306
}

@test "ClO" {
  run clo.ezfio -534.2496714154559
}

@test "DHNO" {
  run  dhno.ezfio  -130.4278777822   
}

@test "H3COH" {
  run h3coh.ezfio  -114.9865030596373
}

@test "HCN" {
  run hcn.ezfio -92.88717500035233
}

@test "N2" {
  run n2.ezfio  -108.9834897852979
}

@test "SiH2_3B1" {
  run sih2_3b1.ezfio -289.9529166224221
}

@test "SO" {
  run so.ezfio -25.71752633718843
}

@test "CH4" {
  run ch4.ezfio -40.19961807784367
}

@test "CO2" {
  run co2.ezfio -187.6507108861204
}

@test "F2" {
  run f2.ezfio  -198.7643578233773
}

@test "HCO" {
  run hco.ezfio -113.0862778269114
}

@test "NH3" {
  run nh3.ezfio -56.21783428976567
}

@test "SiH3" {
  run sih3.ezfio -5.455398769158780
}

@test "ClF" {
  run clf.ezfio -558.8442570663570
}

@test "H2O2" {
  run h2o2.ezfio -150.7806608469964
}

@test "H2S" {
  run h2s.ezfio -398.6944130421982
}

@test "N2H4" {
  run n2h4.ezfio -111.1799916679009
}

@test "OH" {
  run oh.ezfio -75.42025413469165
}

@test "SO2" {
  run so2.ezfio -41.55800190733211
}

