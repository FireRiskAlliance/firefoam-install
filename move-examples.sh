#!/usr/bin/env bash

# make a new directory for the collected examples
mkdir -p $FOAM_RUN/examples

# Copy the example FireFOAM cases that come with OpenFOAM
cp -r $FOAM_TUTORIALS/combustion/fireFoam/les/* $FOAM_RUN/examples

# Copy the example cases that come with FireFOAM
cp -r ~/fireFOAM/fireFoam-dev/cases/* $FOAM_RUN/examples

echo "Example cases copied to: $FOAM_RUN/examples"
echo

# list all the example cases
ls -1 $FOAM_RUN/examples
