Buildout for Salt
=================

Basic Installation using the offline buildout
---------------------------------------------

If you have downloaded the `offline buildout tarball from GitHub
<https://github.com/baijum/salt-buildout/downloads>`_  follow
instruction in this section.

1. Using the system package management tool, install `gcc`,
   `swig`, `zlib` and other basic development libraries.

2. Run `installpy27.sh`

   ::

     ./installpy27.sh

3. Run `install.py`

   ::

     ./usr/bin/python2.7 install.py


Basic Installation using the online buildout
--------------------------------------------

This instruction is for those who trying to install Salt directly
from the clone of github repo.

1. Using the system package management tool, install `gcc`,
   `swig`, `zlib` and other basic development libraries.

2. Run `installpy27.sh`

   ::

     ./installpy27.sh

3. Run `bootstrap..py`

   ::

     ./usr/bin/python2.7 bootstrap.py

4. Run `buildout`

   ::

     ./bin/buildout -c linux.cfg


Running Master
--------------

1. Copy `etc/master.template` to `etc/master`

   ::

     cp etc/master.template etc/master

2. Edit `etc/master` and change default settings, if required.

3. Run Salt master

   ::

     ./bin/salt-master -c etc/master -l debug


Running Minion
--------------

1. Copy `etc/minion.template` to `etc/minion`

   ::

     cp etc/minion.template etc/minion

2. Edit `etc/minion` and change default settings, if required.

3. Run Salt minion

   ::

     ./bin/salt-minion -c etc/minion -l debug
