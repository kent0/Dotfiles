#!/bin/bash -x

source ~/Developer/Z/z.sh
source ~/Developer/Dotfiles/bash_vars
source ~/Developer/Dotfiles/bash_alias

case `uname` in
Darwin)
    case `uname -n` in
    diovis)
        export PYTHON_LIBRARY=/opt/homebrew/Cellar/python@3.11/3.11.7/Frameworks/Python.framework/Versions/3.11/Python
        PTUX=/Users/kaneko/Developer/Tux
        source $PTUX/setup.sh
        source ~/Developer/NekContainer/setup.sh
        export OPENAI_API_KEY=$(cat ~/Developer/Dotfiles/.openai_api_key.txt)
        source /opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh
        export HOMEBREW_CC=icc
        export HOMEBREW_CXX=icc
        set bell-style visible
        ;;
    terra)
        ;;
    esac
    ;;
Linux)
    case `uname -n` in
    donquixote*)
        module load mpi
        ;;
    rocinante*)
        module load mpi
        ;;
    nek5k-wks*)
        module load matlab git openmpi/1.6.3 > /dev/null
        ;;
    cetus*)
        ;;
    h2ologin* | nid*) # Blue Waters
        module unload PrgEnv-cray
        module load PrgEnv-pgi
        ;;
    *)
        ;;
    esac
    ;;
esac
