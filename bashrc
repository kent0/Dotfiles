
source ~/Developer/Dotfiles/bash_vars
source ~/Developer/Dotfiles/bash_alias
source ~/Developer/Z/z.sh

case `uname` in
Darwin)
    ;;
Linux)
    case `uname -n` in
    donquixote*)
#       module load mpi
#       source /opt/intel/compilers_and_libraries/linux/bin/compilervars.sh \
#       intel64
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
