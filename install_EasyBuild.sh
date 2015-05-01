#!/bin/bash
# lmod binary must be available to EasyBuild
export PATH=$HOME/lmod/lmod/libexec:$PATH
curl -L -O https://raw.githubusercontent.com/hpcugent/easybuild-framework/develop/easybuild/scripts/bootstrap_eb.py
python bootstrap_eb.py $HOME
