#!/bin/bash
ENV_MOD_VERSION=3.2.10
curl -L -O http://downloads.sourceforge.net/project/modules/Modules/modules-${ENV_MOD_VERSION}/modules-${ENV_MOD_VERSION}.tar.gz
tar xfvz modules-${ENV_MOD_VERSION}.tar.gz
cd modules-${ENV_MOD_VERSION}
./configure --prefix=env-mods
make install
