#!/bin/bash
(cat >> $HOME/.vimrc) << EOF
:syntax on
:colorscheme desert
:set number
:set expandtab tabstop=4 shiftwidth=4
EOF
