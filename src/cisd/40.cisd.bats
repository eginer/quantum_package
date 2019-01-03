#!/usr/bin/env bats

source $QP_ROOT/tests/bats/common.bats.sh

function run() {
  thresh=1.e-6
  test_exe cisd || skip
  qp_edit -c $1
  ezfio set_file $1
  ezfio set determinants n_states  2
  ezfio set davidson threshold_davidson 1.e-12
  ezfio set davidson n_states_diag 24
  qp_run cisd $1
  energy1="$(ezfio get cisd energy | tr '[]' ' ' | cut -d ',' -f 1)"
  energy2="$(ezfio get cisd energy | tr '[]' ' ' | cut -d ',' -f 2)"
  eq $energy1 $2 $thresh
  eq $energy2 $3 $thresh
}



@test "HBO" {
  run  hbo.ezfio  -100.2019254455993 -99.79484127741013 
}

@test "H2O" {
  run  h2o.ezfio  -76.22975602077072 -75.80609108747208 
}

@test "[Cu(NH3)4]2+" {
  qp_set_mo_class cu_nh3_4_2plus.ezfio -core "[1-24]" -act "[25-45]" -del "[46-87]"
  run  cu_nh3_4_2plus.ezfio -1862.98687225779  -1862.68821075043 
}

@test "C2H2" {
  qp_set_mo_class c2h2.ezfio -act "[1-30]" -del "[31-36]"
  run c2h2.ezfio -12.3566731164213 -11.9495394759914 
}

@test "ClO" {
  run clo.ezfio -534.5404021326773 -534.3818725793897 
}

@test "DHNO" {
  qp_set_mo_class dhno.ezfio -core "[1-7]" -act "[8-64]" 
  run dhno.ezfio -130.458814562403 -130.356308303681
}

@test "H3COH" {
  run h3coh.ezfio  -115.204958752377 -114.755913828245
}

@test "HCN" {
  qp_set_mo_class hcn.ezfio -core "[1,2]" -act "[3-40]" -del "[41-55]"
  run hcn.ezfio -93.0776334511721 -92.6684633795506
}

@test "N2" {
  qp_set_mo_class n2.ezfio -core "[1,2]" -act "[3-40]" -del "[41-60]"
  run n2.ezfio -109.275693633982 -108.757794570948 
}

@test "SiH2_3B1" {
  run sih2_3b1.ezfio -290.015949171697 -289.805036176618
}

@test "SO" {
  run so.ezfio -26.0131812819785 -25.7053111980226
}

@test "CH4" {
  qp_set_mo_class ch4.ezfio -core "[1]" -act "[2-30]" -del "[31-59]"
  run ch4.ezfio -40.2403957502264 -39.8433160343413
}

@test "CO2" {
  qp_set_mo_class co2.ezfio -core "[1,2]" -act "[3-30]" -del "[31-42]"
  run co2.ezfio -187.959378390998  -187.432502050556
}

@test "F2" {
  qp_set_mo_class f2.ezfio -core "[1,2]" -act "[3-30]" -del "[31-62]"
  run f2.ezfio  -199.056829527539 -198.731828008346
}

@test "HCO" {
  run hco.ezfio -113.288687359997  -113.122945162967
}

@test "NH3" {
  qp_set_mo_class nh3.ezfio -core "[1-4]" -act "[5-72]"
  run nh3.ezfio -56.2447484835843 -55.9521689975716
}

@test "SiH3" {
  run sih3.ezfio -5.57096611856522  -5.30950347928823
}

@test "ClF" {
  run clf.ezfio  -559.162476603880  -558.792395927088
}

@test "H2O2" {
  qp_set_mo_class h2o2.ezfio -core "[1-2]" -act "[3-24]" -del "[25-38]"
  run h2o2.ezfio -151.003775695363 -150.650247854914
}

@test "H2S" {
  run h2s.ezfio -398.853701416768 -398.519020035337
}

@test "N2H4" {
  qp_set_mo_class n2h4.ezfio -core "[1-2]" -act "[3-24]" -del "[25-48]"
  run n2h4.ezfio -111.366247464687 -110.990795989548
}

@test "OH" {
  run oh.ezfio -75.6087472926588 -75.5370393736601
}

@test "SO2" {
  qp_set_mo_class so2.ezfio -core "[1-8]" -act "[9-87]" 
  run so2.ezfio -41.5746738710350 -41.3800467740750
}

