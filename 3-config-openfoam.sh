#!/usr/bin/env bash

# Config OpenFOAM for the installed architecture
if [ $(uname -m) = "i686" ]; then
    source $HOME/OpenFOAM/OpenFOAM-dev/etc/bashrc WM_ARCH_OPTION=32 FOAMY_HEX_MESH=yes
fi

if [ $(uname -m) = "x86_64" ]; then
    source $HOME/OpenFOAM/OpenFOAM-dev/etc/bashrc WM_LABEL_SIZE=64 FOAMY_HEX_MESH=yes
fi

# add OpenFOAM bashrc defaults to users .bashrc
echo "source $HOME/OpenFOAM/OpenFOAM-dev/etc/bashrc" >> $HOME/.bashrc

# create symbolic links to avoid some MPI issues (may not be needed)
ln -s /usr/bin/mpicc.openmpi $HOME/OpenFOAM/OpenFOAM-dev/bin/mpicc
ln -s /usr/bin/mpirun.openmpi $HOME/OpenFOAM/OpenFOAM-dev/bin/mpirun


