#!/usr/bin/env bash

echo "Updating OpenFOAM..."
echo

# make a local copy of the latest OpenFOAM source repository
cd $WM_PROJECT_DIR
git pull

# rebuild OpenFOAM
./Allwmake -j -update

echo "Updating FireFOAM..."
echo

# make a local copy of the latest FireFOAM source repository
cd $HOME/fireFOAM/fireFoam-dev
git pull

# rebuild FireFOAM
./Allwmake -j -update
