#!/bin/bash
LMOD_VERSION=6.0.9
curl -L -O https://github.com/TACC/Lmod/archive/${LMOD_VERSION}.tar.gz
tar xvfz ${LMOD_VERSION}.tar.gz
cd Lmod-${LMOD_VERSION}
# will install to $HOME/lmod
./configure --prefix=$HOME --with-caseIndependentSorting=yes --with-redirect=yes --with-autoSwap=no --with-pinVersions=yes
make install
