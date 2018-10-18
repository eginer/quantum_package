Installation
============

Set up the environment::

    ./configure <config_file> 

For example you can type::

    ./configure config/gfortran.cfg 

This command will :

 - Download and install all the requirements.
   Installing `OCaml`_ and the `Core`_ library may take some time (up to 20min on an old machine).
 - Create the file which contains all the dependencies for the binaries.
   It's not a Makefile, but a `Ninja`_ file (so don't type ``make`` is hopeless, type ``ninja`` instead)

By default, the OCaml compiler and libraries will be installed in ``$HOME/.opam``.
If you want to install it somewhere else, you can change this by setting the ``$OPAMROOT``
environment variable to the location of your choice. 
For more info about the OCaml installation, you can visit the `Opam website <https://opam.ocaml.org/doc/Install.html>`_.

Compiling Flags
---------------

``<config_file>`` is the path to the file which contains all the flags useful for the compilation : optimization flags, Lapack libary, etc.  We have two default configuration files in  ``$QP_ROOT/config`` : ``ifort.cfg`` and ``gfortran.cfg``.  Copy these files to create a new config file adapted to your architecture. 

Note that the `popcnt` instruction accelerates *a lot* the programs, so the
SSE4.2, AVX or AVX2 instruction sets should be enabled if possible.

If you encounter an error saying that your Fortran compiler can't produce
executables, it means that the program was built using an instruction set
not supported by the current processor. In that case, use the ``-xHost`` option
of the Intel Fortran compiler, or the ``-march=native`` option of gfortran.

Set environment variables
-------------------------

A configuration file named ``quantum_package.rc`` will be created.
To finish the installation and to start using the quantum package, source this file in your shell::

    source quantum_package.rc

And you can also source it inside your ``.bashrc`` file, or create a system-wide module file. 

If you use a C-shell, you will have to translate the ``quantum_package.rc`` file into
C-shell syntax and source it in your shell.

Add some modules
----------------

The quantum package has **no executable out of the box**. You need to install (and then compile) some modules. The ``qp_module.py`` will help you::

       qp_module.py create -n <name> [<children_modules>...]
       qp_module.py download -n <name> [<path_folder>...]
       qp_module.py install <name>...
       qp_module.py list (--installed | --available-local)
       qp_module.py uninstall <name>


For exemple you can type ::

   qp_module.py install Full_CI_ZMQ

This will install the `Full_CI_ZMQ` module. All the modules are installed in the ``$QP_ROOT/src/``, and all the available modules are in ``$QP_ROOT/plugins/``

Compiling the Fortran
---------------------

Just type ``ninja`` if you are in ``$QP_ROOT`` (or ``ninja -f $QP_ROOT/build.ninja`` elsewhere). The compilation will take approximately 5 min.


.. _Ninja: https://ninja-build.org/
.. _OCaml: http://ocaml.org/
.. _Core: https://opensource.janestreet.com/core/

