#!/usr/bin/env bash

# Download source code for OpenFOAM and Third Party software

# Create an OpenFOAM directory in your home directory
cd ~
mkdir OpenFOAM
cd OpenFOAM/

# Download OpenFOAM
git clone https://github.com/OpenFOAM/OpenFOAM-dev.git

# Download Third Party software
git clone https://github.com/OpenFOAM/ThirdParty-dev.git
