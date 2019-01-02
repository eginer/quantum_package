#!/usr/bin/env bats

source $QP_ROOT/tests/bats/common.bats.sh

function run() {
  if [[ -z $5 ]] ; then
    S2=1
  else
    S2=0
  fi
  thresh=1.e-6
  test_exe cis || skip
  qp_edit -c $1
  ezfio set_file $1
  ezfio set determinants n_states  3
  ezfio set determinants s2_eig $S2
  ezfio set davidson threshold_davidson 1.e-12
  echo "Write" > $1/mo_two_e_integrals/disk_access_mo_integrals
  qp_set_frozen_core $1
  qp_run cis $1
  energy1="$(ezfio get cis energy | tr '[]' ' ' | cut -d ',' -f 1)"
  energy2="$(ezfio get cis energy | tr '[]' ' ' | cut -d ',' -f 2)"
  energy3="$(ezfio get cis energy | tr '[]' ' ' | cut -d ',' -f 3)"
  eq $energy1 $2 $thresh
  eq $energy2 $3 $thresh
  eq $energy3 $4 $thresh
}



@test "HBO" {
  run  hbo.ezfio  -100.018582307658  -99.77695116779833 -99.74105601962573 x
}

@test "H2O" {
  run  h2o.ezfio  -76.02702187043107 -75.6854407466997  -75.61967556334928
}

@test "[Cu(NH3)4]2+" {
  run  cu_nh3_4_2plus.ezfio -1862.97958709248 -1862.92454796197 -1862.91130872182
}

@test "C2H2" {
  run c2h2.ezfio -12.1214401949631 -11.95227840126497 -11.91537223579299 x
}

@test "ClO" {
  run clo.ezfio -534.263560525680 -534.256601571199 -534.062020844428
}

@test "DHNO" {
  run dhno.ezfio -130.4472288472718 -130.3571808164850 -130.2196257046987
}

@test "H3COH" {
  run h3coh.ezfio  -114.986503059639 -114.649121836046 -114.578365912794
}

@test "HCN" {
  run hcn.ezfio -92.88717500038086 -92.69765690338815 -92.66095614790936 x
}

@test "N2" {
  run n2.ezfio  -108.9834897853052 -108.7538426008862 -108.7142633124650 x
}

@test "SiH2_3B1" {
  run sih2_3b1.ezfio -289.952916622430 -289.901707301173 -289.715063453770
}

@test "SO" {
  run so.ezfio -25.7502241401925 -25.5862791897799 -25.5829342971276
}

@test "CH4" {
  run ch4.ezfio -40.1996180778616 -39.7936150141939 -39.7936150141734
}

@test "CO2" {
  run co2.ezfio -187.6507108861505 -187.3564970712329 -187.3277981565893 x
}

@test "F2" {
  run f2.ezfio  -198.764357823385 -198.575548537096 -198.575548537096
}

@test "HCO" {
  run hco.ezfio -113.0940242141341 -113.0023623703527 -112.8947302999338
}

@test "NH3" {
  run nh3.ezfio -56.21783428981829 -55.91997684191139 -55.84753645754046
}

@test "SiH3" {
  run sih3.ezfio -5.45916474249436 -5.23512810272682 -5.23512806272007
}

@test "ClF" {
  run clf.ezfio -558.844257066356 -558.664418728406 -558.664418728405
}

@test "H2O2" {
  run h2o2.ezfio -150.780660847001 -150.546208866263 -150.483274551717
}

@test "H2S" {
  run h2s.ezfio -398.694413042222 -398.447164835271 -398.412784774083
}

@test "N2H4" {
  run n2h4.ezfio -111.179991667947 -110.894116344878 -110.855788839735
}

@test "OH" {
  run oh.ezfio -75.4314648243896 -75.4254639668256 -75.2707675632313
}

@test "SO2" {
  run so2.ezfio -41.55800190756020 -41.38232949315986 -41.35512395629023
}

