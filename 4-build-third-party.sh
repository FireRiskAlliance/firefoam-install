#!/usr/bin/env bash

# setup OpenFOAM environment
source $HOME/.bashrc

# change to ThirdParty folder
cd $WM_THIRD_PARTY_DIR
 
# make very certain the correct Qt version is used
export QT_SELECT=qt4
 
# Build the Third Party software
# This next command may take up to 30 minutes
echo "building 3rd party software..."
./Allwmake > log.make 2>&1

# View the tail of the log file to check build
tail -n 10 log.make

# Refresh shell environment
source $HOME/.bashrc

# change to ThirdParty folder
cd $WM_THIRD_PARTY_DIR
 
# make very certain the correct Qt version is used
export QT_SELECT=qt4

echo
echo "building ParaView ..." 

# Build ParaView with python and mpi
# This next command may take up to 2 hours
if [ $(uname -m) = "i686" ]; then
    ./makeParaView -python -mpi -python-lib /usr/lib/i386-linux-gnu/libpython2.7.so.1.0 > log.makePV 2>&1
fi

if [ $(uname -m) = "x86_64" ]; then
    ./makeParaView -python -mpi -python-lib /usr/lib/x86_64-linux-gnu/libpython2.7.so.1.0 > log.makePV 2>&1
fi

# View the log file to check progress
tail -n 10 log.makePV

