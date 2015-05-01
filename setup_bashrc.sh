#!/bin/bash
(cat >> $HOME/.bashrc) << EOF
# disable coloured ls output
alias ls="/bin/ls"

# include location of Lmod binaries in \$PATH
export PATH=\$HOME/lmod/lmod/libexec:\$PATH

# set up \$MODULEPATH (can't use 'module use' yet)
export MODULEPATH=\$HOME/modules/all

# set up Lmod
source \$HOME/lmod/lmod/init/bash

## configure EasyBuild
# install software to \$HOME/software, modules to \$HOME/modules(/all)
export EASYBUILD_PREFIX=\$HOME
# use Lmod as modules tool
export EASYBUILD_MODULES_TOOL=Lmod

# load EasyBuild module
ml EasyBuild
EOF
