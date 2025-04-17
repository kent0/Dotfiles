#!/bin/bash -x

source ~/Developer/Z/z.sh
source ~/Developer/Dotfiles/bash_vars
source ~/Developer/Dotfiles/bash_alias

if [ ! -z $GLUON_PATH ]; then source $GLUON_PATH/setup.sh; fi

if [ -d .venv ]; then
    source .venv/bin/activate
fi
