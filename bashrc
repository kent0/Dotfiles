#!/bin/bash -x

source ~/Developer/Z/z.sh
source ~/Developer/Dotfiles/bash_vars
source ~/Developer/Dotfiles/bash_alias

case `uname` in
Darwin)
#   export PYTHON_LIBRARY=/opt/homebrew/Cellar/python@3.11/3.11.7/Frameworks/Python.framework/Versions/3.11/Python
    export OPENAI_API_KEY=$(cat ~/Developer/Dotfiles/.openai_api_key.txt)
    export GLUON_PATH="$DEV/Gluon"
    export GLUON_PYTHON=python3.11
    source $GLUON_PATH/setup.sh
    ;;
esac
