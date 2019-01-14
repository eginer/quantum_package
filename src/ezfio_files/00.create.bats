#!/usr/bin/env bats

source $QP_ROOT/tests/bats/common.bats.sh
source $QP_ROOT/quantum_package.rc

function run {
  local INPUT=$1
  local EZ=${INPUT/.xyz/.ezfio}
  local EZ=${EZ/.zmt/.ezfio}
  local MULT=$2
  local CHARGE=$3
  local BASIS=$4
  if [[ -n $5 ]] ; then 
    local PSEUDO="-p $5"
  fi
  cp ${QP_ROOT}/tests/input/$INPUT .
  rm -rf $EZ
  qp create_ezfio_from_xyz \
     $INPUT --basis="$BASIS" -m $MULT -c $CHARGE $PSEUDO -o $EZ
  qp edit --check
  qp set scf_utils thresh_scf 1.e-12
  qp set ao_two_e_ints io_ao_two_e_integrals "Write" 
  qp set mo_two_e_ints io_mo_two_e_integrals "Write" 
}


@test "C2H2" {
  run c2h2.xyz 1 0 vdz-bfd bfd
}

@test "ClO" {
  run clo.xyz 2 0 cc-pvdz
}

@test "DHNO" {
  run dhno.xyz 2 0 "chipman-dzp"
}

@test "H3COH" {
  run h3coh.xyz 1 0 6-31g
}

@test "HCN" {
  run hcn.xyz 1 0 aug-cc-pvdz
}

@test "N2" {
  run n2.xyz 1 0 cc-pvtz
}

@test "SiH2_3B1" {
  run sih2_3b1.xyz 3 0 6-31g
}

@test "SO" {
  run so.xyz 3 0 vdz-bfd bfd
}

@test "CH4" {
  run ch4.xyz 1 0 aug-cc-pvdz
}

@test "CO2" {
  run co2.xyz 1 0 cc-pvdz
}

@test "F2" {
  run f2.zmt 1 0 "Def2-TZVP"
}

@test "HCO" {
  run hco.xyz 2 0 "Ahlrichs VDZ"
}

@test "NH3" {
  run nh3.xyz 1 0 cc-pvtz
}

@test "SiH3" {
  run sih3.xyz 2 0 vdz-bfd bfd
}

@test "ClF" {
  run clf.xyz 1 0 cc-pvdz
}

@test "H2O2" {
  run h2o2.zmt 1 0 cc-pvdz
}

@test "H2S" {
  run h2s.xyz 1 0 cc-pvdz
}

@test "N2H4" {
  run n2h4.zmt 1 0 cc-pvdz
}

@test "OH" {
  run oh.xyz 2 0 "Roos Augmented Double Zeta ANO"
}

@test "SO2" {
  run so2.xyz 1 0 vtz-bfd bfd
}

