#!/usr/bin/env bash

echo "Current FOAM_RUN directory: $FOAM_RUN"

if [[ -z "$1" ]]; then
  # no directory provided, show prompt
  echo -n "Enter the new FOAM_RUN path and press [ENTER]: "
  read RUN
else
  # use command line argument as new run directory
  RUN="$1"
  
fi

if [[ -z "$RUN" ]]; then
  # no directory provided
  exit 1

else
  # override FOAM_RUN env variable
  echo "export FOAM_RUN=$RUN" >> $HOME/.bashrc

  # create the run directory, if needed
  mkdir -pv "$RUN"

fi

