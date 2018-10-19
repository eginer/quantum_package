open Core
open Qptypes

let get_data () =
  let mos = 
    Input.Mo_basis.read ()
  in
  let molecule =
    let e = 
      match Input.Electrons.read () with
      | Some x -> x
      | None -> failwith "No electrons"
    in
    { Molecule.nuclei =
        begin
          match Input.Nuclei_by_hand.read () with
          | None -> failwith "No nuclei"
          | Some l -> Input.Nuclei_by_hand.to_atom_list l
        end ;
      Molecule.elec_alpha = e.Input.Electrons.elec_alpha_num ;
      Molecule.elec_beta  = e.Input.Electrons.elec_beta_num  ;
    }
  in
  let charge = 
    Molecule.get_charge molecule
    |> Charge.to_int
  and mult = 
    Molecule.get_multiplicity molecule
    |> Multiplicity.to_int
  in 
  let hf =
    if mult = 0 then "RHF" else "ROHF"
  in
  let guess = 
    if mos = None then `Huckel else `Read
  in
  (mos, molecule, charge, mult, hf, guess)




let run_g09 () =
  let (mos, molecule, charge, mult, hf, guess) =
    get_data ()
  in
  let guess = 
    match guess with
    | `Read -> "cards"
    | `Huckel -> "huckel"
  in
  let result = [
    Printf.sprintf "# %s/Gen guess=%s" hf guess;
    "" ;
    Molecule.name molecule ;
    "" ;
    Printf.sprintf "%d %d" charge mult ;
    Printf.sprintf "%s" (
      match String.split ~on:'\n' @@ Molecule.to_xyz molecule  with
      | _ :: _ :: rest -> String.concat ~sep:"\n" rest
      | _ -> assert false
    );
    "";
    begin
      match Input.Ao_basis.read () with
      | Some x -> Input.Ao_basis.to_basis x
      | None -> failwith "No basis"
    end 
    |> Basis.to_string ~fmt:Gto.Gaussian ~ele_array:(List.map ~f:(fun x -> x.Atom.element)
                                                       molecule.Molecule.nuclei |> Array.of_list) ;
    "";
    begin
      match mos with
      | None -> ""
      | Some mos' -> 
        begin
          Printf.sprintf "(E20.12)\n%s\n    0" 
            ( 
              Array.map mos'.Input.Mo_basis.mo_coef ~f:(fun x -> 
                  Array.map x ~f:(fun y -> Printf.sprintf "%20.12E" (MO_coef.to_float y))
                  |> Array.to_list
                  |> String.concat ~sep:"\n")
              |> Array.mapi ~f:(fun i -> Printf.sprintf "%5d\n%s" (i+1))
              |> Array.to_list
              |> String.concat ~sep:"\n"
            )
        end
    end;
    "" ; "" ;
    "" ; "" ;
  ]
  in
  List.iter ~f:(fun x -> print_endline x) result




let run_gamess () =
  failwith "Not yet implemented"
(* TODO
  let (mos, molecule, charge, mult, hf, guess) =
    get_data ()
  in
  let guess = 
    match guess with
    | `Read -> "MOREAD"
    | `Huckel -> "HUCKEL"
  in
  and coord  =
    Printf.sprintf "%s" (
      match String.split ~on:'\n' @@ Molecule.to_xyz molecule  with
      | _ :: _ :: rest -> String.concat ~sep:"\n" rest
      | _ -> assert false
    );
  and basis  =
    begin
      match !read_data.basis with
      | None |> failwith "No basis set defined in command line"
      | Some b |> b
    end
  and typ    = !read_data.typ
  and vecfile =
    begin
      match !read_data.filename with
      | None |> ""
      | Some filename |> filename
    end
  and nstate = !read_data.nstate
  and guess  = !read_data.guess
  in

  let system =
    Gamess.{ mult ; charge ; basis ; coord }
  in
  Gamess.create_input ~vecfile ~system ~guess ~nstate typ
  |> print_endline 
*)


let spec =
  let open Command.Spec in
  empty
  +> flag "-gamess" no_arg ~doc:"GAMESS(US) input"
  +> flag "-g09" no_arg ~doc:"Gaussian 09 input"
  +> anon ("ezfio_file" %: string)

let command = 
  Command.basic_spec
  ~summary: "Quantum Package command"
  ~readme:(fun () -> 
      "
Exports the computed data for other programs.
      ")
  spec
  (fun gamess g09 ezfio_file () -> 
    let count_flags l =
        List.fold_left ~f:(fun a x -> 
            if x then a+1 else a) ~init:0 l
    in
    let () =
      match count_flags [ g09 ; gamess ] with
      | 0  -> raise (Invalid_argument "No file format specified")
      | 1  -> ()
      | _  -> raise (Invalid_argument "Too many file formats specified")
    in
    Ezfio.set_file ezfio_file;
    if g09 then
      run_g09 ()
    else if gamess then
      run_gamess ()
  )

    
let () = 
  Command.run command;
  exit 0
   
