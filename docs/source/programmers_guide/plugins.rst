
==========================
Working with plugins
==========================


Installing a remote plugin
--------------------------

Download an external repository of plugins::

        qp_plugins download http://somewhere/over/the/rainbow/ext_repo


This installs the repository of external plugins :file:`ext_repo` in
:file:`$QP_ROOT/plugins`. 

Now, the external plugin :file:`ext_module` contained in the repository 
:file:`ext_repo` can be installed using::

        qp_plugins install ext_module


The module is now accessible via a symbolic link in :file:`$QP_ROOT/src`,
and can be compiled as any module.


To uninstall the plugin, run::

        qp_plugins uninstall ext_module





Creating a repository of plugins
--------------------------------

Create a repository, for example :file:`qp_plugins_user`, hosted somewhere
(GitLab, GitHub, etc...), and clone the repository in the
:file:`$QP_ROOT/plugins` directory.


Creating new plugins
--------------------

To create a new plugin named :file:`my_plugin` in this repository, run::

        qp_plugins create -n my_plugin -r qp_plugins_user


Now, the plugin needs to be installed to be compiled::

        qp_plugins install my_plugin



