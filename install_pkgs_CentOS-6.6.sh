#!/bin/bash

# more repositories (see https://fedoraproject.org/wiki/EPEL)
sudo yum install -y epel-release

# should already be there
sudo yum install -y lua python

# required for EasyBuild
sudo yum install -y python gcc-c++ patch unzip

# required for environment modules
sudo yum install -y tcl-devel
# required for Lmod
sudo yum install -y lua lua-posix lua-filesystem tcl
# optional for Lmod
sudo yum install -y lua-json lua-term

# so we can build OFED-enabled toolchains
sudo yum install -y libibverbs-devel

# OpenSSL OS dep
sudo yum install -y openssl-devel

# useful tools
sudo yum install -y wget man vim emacs git
