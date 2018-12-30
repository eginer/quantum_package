#!/usr/bin/env bats

source $QP_ROOT/tests/bats/common.bats.sh

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
  qp_create_ezfio_from_xyz \
     $INPUT -b "$BASIS" -m $MULT -c $CHARGE $PSEUDO -o $EZ
  qp_edit -c $EZ
  echo "Write" > ${EZ}/ao_two_e_integrals/disk_access_ao_integrals
}


@test "qp_create c2h2.xyz" {
  run c2h2.xyz 1 0 vdz-bfd bfd
}

@test "qp_create clo.xyz" {
  run clo.xyz 2 0 cc-pvdz
}

@test "qp_create dhno.xyz" {
  run dhno.xyz 2 0 "chipman-dzp"
}

@test "qp_create h3coh.xyz" {
  run h3coh.xyz 1 0 6-31g
}

@test "qp_create hcn.xyz" {
  run hcn.xyz 1 0 aug-cc-pvdz
}

@test "qp_create n2.xyz" {
  run n2.xyz 1 0 cc-pvtz
}

@test "qp_create sih2_3b1.xyz" {
  run sih2_3b1.xyz 1 0 6-31g
}

@test "qp_create so.xyz" {
  run so.xyz 3 0 vdz-bfd bfd
}

@test "qp_create ch4.xyz" {
  run ch4.xyz 1 0 aug-cc-pvtz
}

@test "qp_create co2.xyz" {
  run co2.xyz 1 0 cc-pvdz
}

@test "qp_create f2.zmt" {
  run f2.zmt 1 0 "Def2-TZVP"
}

@test "qp_create hco.xyz" {
  run hco.xyz 2 0 "Ahlrichs VDZ"
}

@test "qp_create nh3.xyz" {
  run nh3.xyz 1 0 cc-pvdz
}

@test "qp_create sih3.xyz" {
  run sih3.xyz 2 0 vdz-bfd bfd
}

@test "qp_create clf.xyz" {
  run clf.xyz 1 0 cc-pvdz
}

@test "qp_create h2o2.zmt" {
  run h2o2.zmt 1 0 cc-pvdz
}

@test "qp_create h2s.xyz" {
  run h2s.xyz 1 0 cc-pvdz
}

@test "qp_create n2h4.zmt" {
  run n2h4.zmt 1 0 cc-pvdz
}

@test "qp_create oh.xyz" {
  run oh.xyz 2 0 "Roos Augmented Double Zeta ANO"
}

@test "qp_create so2.xyz" {
  run so2.xyz 1 0 vtz-bfd bfd
}

