#!/bin/bash
(cat >> $HOME/.bashrc) << EOF
# disable coloured ls output
alias ls="/bin/ls"

# include location of environment modules/Lmod binaries in \$PATH
export PATH=`ls -d \$HOME/env-mods/Modules/*/bin`:\$HOME/lmod/lmod/libexec:\$PATH

# set up \$MODULEPATH (can't use 'module use' yet)
export MODULEPATH=\$HOME/modules/all

# set up environment modules
if [ -f \$HOME/env-mods/Modules/*/init/bash ]
then
    source \$HOME/env-mods/Modules/*/init/bash
fi

# set up Lmod
if [ -f \$HOME/lmod/lmod/init/bash ]
then
    source \$HOME/lmod/lmod/init/bash
fi

## configure EasyBuild

# install software to \$HOME/software, modules to \$HOME/modules(/all)
export EASYBUILD_PREFIX=\$HOME

# use Lmod as modules tool (if available)
which lmod &> /dev/null
if [ \$? -eq 0 ]
then
    export EASYBUILD_MODULES_TOOL=Lmod
fi

# load EasyBuild module
module load EasyBuild
EOF
