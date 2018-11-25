#!/bin/env python2

from __future__ import print_function
import os
import ConfigParser


def generate_modules(abs_module, entities):
  MODULE = os.path.split(abs_module)[-1]
  module = MODULE.lower()
  if module == "dummy":
    return

  with open( os.path.join(abs_module,'README.rst'), 'r' ) as f:
    readme = f.read()
  rst = [
    ".. _%s:"%(module), "", 
    ".. program:: %s"%(module), "", 
    ".. default-role:: option", "", 
    readme, "", 
  ]

  EZFIO = os.path.join(abs_module,'EZFIO.cfg')
  if os.path.exists(EZFIO):
    rst += [ "", "EZFIO parameters", "----------------", "" ]
    config_file = ConfigParser.ConfigParser()
    with open(EZFIO,'r') as f:
        config_file.readfp(f)
        for section in config_file.sections():
            doc = config_file.get(section,"doc")
            doc     = "   " + doc.replace("\n","\n\n   ")+"\n"
            try:
                default = config_file.get(section,"default")
                default = "   " + "Default: %s\n"%default
            except:
                default = ""
            rst += [ ".. option:: %s\n"%(section), doc, default ]

  providers = []
  subroutines = []
  for k in entities:
    e = entities[k]
    if e["module"] == module:
        if "/" not in e["file"] and e["file"] != "ezfio_interface.irp.f":
            if e["type"] == 's':
                subroutines.append(e)
            elif e["type"] == 'p':
                providers.append(e)

  if providers:
    rst += [ "", "Providers", "---------", "" ]
    for p in providers:
        rst += [ """
.. option:: %s

    .. code:: text

        %s

        File: %s

    %s


""" % ( p["name"],
        "\n        ".join(p["decl"]),
        p["file"],
        " ".join(p["doc"]).replace(".br","\n"),
      ) ]



  rst_file = os.path.join('modules',module+".rst")
  with open(rst_file,'w') as f: 
    f.write("\n".join(rst))



def generate_providers(abs_module):

  MODULE = os.path.split(abs_module)[-1]
  module = MODULE.lower()
  if module == "dummy":
    return

  files    = {}
  entities = {}
  mandir = os.path.join(abs_module,'IRPF90_man') 
  if not os.path.exists(mandir):
    return {}

  for f in os.listdir(mandir):

        filename = os.path.join(mandir,f)
        if f not in files:
            files[f] = 0
            name = f.split('.')[0] 
            with open(filename, 'r') as f:
                state = 0
                entity = { "decl": [], "doc": [] ,
                    "name": name , "module": module }
                for line in f.readlines():
                    line = line.strip()
                    if line.startswith(".SH Declaration"):
                        state = 1
                        continue
                    elif line.startswith(".nf"): continue
                    elif line.startswith(".ni"): continue
                    elif line.startswith(".P"): continue
                    if line.startswith(".SH Description"):
                        state = 2
                        continue
                    elif line.startswith(".SH File"):
                        state = 3
                        continue
                    if line.startswith(".SH Need"):
                        break
                    if line.startswith(".SH Instability"):
                        break
                    if line.startswith(".SH Call"):
                        break

                    if state == 1:
                        entity["decl"] += [ line ]
                        if line.startswith("subroutine") \
                        or line.startswith("function ") \
                        or " function " in line:
                            entity["type"] = 's'
                        else:
                            entity["type"] = 'p'
                    elif state == 2:
                        entity["doc"] += [ line ]
                    elif state == 3:
                        if line.startswith(".br"):
                            continue
                        entity["file"] = line

            entities [ entity["name"] ] = entity

  return entities




def main():

  if "QP_ROOT" in os.environ:
    QP_ROOT=os.environ["QP_ROOT"]
  else:
    QP_ROOT="../../"

  SRC = os.path.join(QP_ROOT, "src")

  entities = {}
  for abs_module in os.listdir(SRC):
    abs_module = os.path.join(SRC,abs_module)
    if os.path.exists( os.path.join(abs_module, "README.rst") ):
      read_entities = generate_providers(abs_module)
      if read_entities:
        for k in read_entities:
            entities[k] = read_entities[k]
      generate_modules(abs_module,entities)

if __name__ == '__main__':
  main()

