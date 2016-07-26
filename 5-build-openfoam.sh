#!/usr/bin/env bash

# setup OpenFOAM environment
source $HOME/.bashrc

# change to OpenFOAM directory
cd $WM_PROJECT_DIR
 
# make certain the correct Qt version is used
export QT_SELECT=qt4
 
# Build OpenFOAM using all available processors
# This next command may take up to several hours
echo "Building OpenFOAM..."
./Allwmake -j > log.make 2>&1 &

# View the log file to check progress
tail -f log.make
