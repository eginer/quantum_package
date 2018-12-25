==================
Developing plugins
==================


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



