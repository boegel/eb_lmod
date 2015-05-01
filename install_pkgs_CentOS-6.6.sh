#!/bin/bash

# more repositories (see https://fedoraproject.org/wiki/EPEL)
yum install -y epel-release

# should already be there
yum install -y lua python

# required for EasyBuild
yum install -y python gcc-c++ patch

# required for Lmod
yum install -y lua lua-posix lua-filesystem tcl
# optional for Lmod
yum install -y lua-json lua-term

# so we can build OFED-enabled toolchains
yum install -y libibverbs-devel

# useful tools
yum install -y wget man vim emacs git
