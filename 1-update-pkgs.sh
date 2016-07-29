#!/usr/bin/env bash

# Install the packages needed for fireFoam

# update system
sudo apt-get update -y

# Install packages for OpenFOAM and ParaView
sudo apt-get install -y git-core build-essential binutils-dev cmake flex bison zlib1g-dev qt4-dev-tools libqt4-dev libqtwebkit-dev gnuplot \
libreadline-dev libncurses-dev libxt-dev libopenmpi-dev openmpi-bin libboost-system-dev libboost-thread-dev libgmp-dev \
libmpfr-dev python python-dev libcgal-dev

# Additional packages that may be needed for ParaView and CGAL
sudo apt-get install -y libglu1-mesa-dev libqt4-opengl-dev

# Install additional packages for Scotch/PT-Scotch
sudo apt-get install -y libscotch-dev libptscotch-dev


