#!/usr/bin/env bash

echo "Running smallPoolFire2D test case..."
echo

# copy the example case to the run directory
cp -r $FOAM_TUTORIALS/combustion/fireFoam/les/smallPoolFire2D $FOAM_RUN

# change to the simulation directory
cd $FOAM_RUN/smallPoolFire2D

# run the fireFoam simulation
./Allrun &

sleep 5

# view the log file to check the progress of the simulation 
tail -f log.fireFoam
