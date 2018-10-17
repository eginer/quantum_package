(* =~=~ *)
(* Init *)
(* =~=~ *)

open Qptypes;;
open Qputils;;
open Core;;

module Ao_basis : sig
(* Generate type *)
   type t = 
     {
       disk_access_ao_one_integrals   : Disk_access.t;
     } [@@deriving sexp]
   ;;
  val read  : unit -> t option
  val write : t-> unit
  val to_string : t -> string
  val to_rst : t -> Rst_string.t
  val of_rst : Rst_string.t -> t option
end = struct
(* Generate type *)
   type t = 
     {
       disk_access_ao_one_integrals   : Disk_access.t;
     } [@@deriving sexp]
   ;;

  let get_default = Qpackage.get_ezfio_default "ao_basis";;

(* =~=~=~=~=~=~==~=~=~=~=~=~ *)
(* Generate Special Function *)
(* =~=~=~==~=~~=~=~=~=~=~=~=~ *)

(* Read snippet for ao_cartesian *)
  let read_ao_cartesian () =
    if not (Ezfio.has_ao_basis_ao_cartesian ()) then
       get_default "ao_cartesian"
       |> Bool.of_string
       |> Ezfio.set_ao_basis_ao_cartesian
    ;
    Ezfio.get_ao_basis_ao_cartesian ()
  ;;
(* Write snippet for ao_cartesian *)
  let write_ao_cartesian =
     Ezfio.set_ao_basis_ao_cartesian
  ;;

(* Read snippet for ao_prim_num_max *)
  let read_ao_prim_num_max () =
    if not (Ezfio.has_ao_basis_ao_prim_num_max ()) then
       get_default "ao_prim_num_max"
       |> Int.of_string
       |> Ezfio.set_ao_basis_ao_prim_num_max
    ;
    Ezfio.get_ao_basis_ao_prim_num_max ()
  ;;
(* Write snippet for ao_prim_num_max *)
  let write_ao_prim_num_max =
     Ezfio.set_ao_basis_ao_prim_num_max
  ;;

(* Read snippet for disk_access_ao_one_integrals *)
  let read_disk_access_ao_one_integrals () =
    if not (Ezfio.has_ao_basis_disk_access_ao_one_integrals ()) then
       get_default "disk_access_ao_one_integrals"
       |> String.of_string
       |> Ezfio.set_ao_basis_disk_access_ao_one_integrals
    ;
    Ezfio.get_ao_basis_disk_access_ao_one_integrals ()
      |> Disk_access.of_string
  ;;
(* Write snippet for disk_access_ao_one_integrals *)
  let write_disk_access_ao_one_integrals var = 
    Disk_access.to_string var
    |> Ezfio.set_ao_basis_disk_access_ao_one_integrals
  ;;

(* Read snippet for integral_kinetic *)
  let read_integral_kinetic () =
    if not (Ezfio.has_ao_basis_integral_kinetic ()) then
       get_default "integral_kinetic"
       |> Float.of_string
       |> Ezfio.set_ao_basis_integral_kinetic
    ;
    Ezfio.get_ao_basis_integral_kinetic ()
  ;;
(* Write snippet for integral_kinetic *)
  let write_integral_kinetic =
     Ezfio.set_ao_basis_integral_kinetic
  ;;

(* Read snippet for integral_nuclear *)
  let read_integral_nuclear () =
    if not (Ezfio.has_ao_basis_integral_nuclear ()) then
       get_default "integral_nuclear"
       |> Float.of_string
       |> Ezfio.set_ao_basis_integral_nuclear
    ;
    Ezfio.get_ao_basis_integral_nuclear ()
  ;;
(* Write snippet for integral_nuclear *)
  let write_integral_nuclear =
     Ezfio.set_ao_basis_integral_nuclear
  ;;

(* Read snippet for integral_overlap *)
  let read_integral_overlap () =
    if not (Ezfio.has_ao_basis_integral_overlap ()) then
       get_default "integral_overlap"
       |> Float.of_string
       |> Ezfio.set_ao_basis_integral_overlap
    ;
    Ezfio.get_ao_basis_integral_overlap ()
  ;;
(* Write snippet for integral_overlap *)
  let write_integral_overlap =
     Ezfio.set_ao_basis_integral_overlap
  ;;

(* Read snippet for integral_pseudo *)
  let read_integral_pseudo () =
    if not (Ezfio.has_ao_basis_integral_pseudo ()) then
       get_default "integral_pseudo"
       |> Float.of_string
       |> Ezfio.set_ao_basis_integral_pseudo
    ;
    Ezfio.get_ao_basis_integral_pseudo ()
  ;;
(* Write snippet for integral_pseudo *)
  let write_integral_pseudo =
     Ezfio.set_ao_basis_integral_pseudo
  ;;

(* =~=~=~=~=~=~=~=~=~=~=~=~ *)
(* Generate Global Function *)
(* =~=~=~=~=~=~=~=~=~=~=~=~ *)

(* Read all *)
   let read() = 
     Some
     {
       disk_access_ao_one_integrals   = read_disk_access_ao_one_integrals ();
     }
   ;;
(* Write all *)
   let write{ 
              disk_access_ao_one_integrals;
            } =
     write_disk_access_ao_one_integrals   disk_access_ao_one_integrals;
   ;;
(* to_string*)
   let to_string b =
     Printf.sprintf "
   disk_access_ao_one_integrals = %s
   "
       (Disk_access.to_string b.disk_access_ao_one_integrals)
   ;;
(* to_rst*)
   let to_rst b =
     Printf.sprintf "
   Read/Write AO one-electron integrals from/to disk [ Write | Read | None ] ::
   
     disk_access_ao_one_integrals = %s
   
   "
       (Disk_access.to_string b.disk_access_ao_one_integrals)
   |> Rst_string.of_string
   ;;
  include Generic_input_of_rst;;
  let of_rst = of_rst t_of_sexp;;

end