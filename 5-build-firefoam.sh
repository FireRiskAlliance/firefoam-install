#!/usr/bin/env bash

# Build fireFOAM 

# Change directory to desired install location
cd ~
mkdir fireFOAM
cd fireFOAM

# Download fireFoam from source repo
git clone https://github.com/fireFoam-dev/fireFoam-dev.git 

# Build FireFOAM
cd fireFoam-dev
./Allwmake -j >& log.Allwmake &

# View the log file to monitor progress of the build
tail -f log.Allwmake
