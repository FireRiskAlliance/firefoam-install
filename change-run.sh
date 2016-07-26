#!/usr/bin/env bash

echo "Current FOAM_RUN directory: $FOAM_RUN"

echo -n "Enter the new FOAM_RUN path and press [ENTER]: "
read RUN

if [[ -z "$RUN" ]; then
	exit 1
else
	# override FOAM_RUN env variable
	echo "export FOAM_RUN=$RUN" >> $HOME/.bashrc

	# create the run directory, if needed
	mkdir -p $FOAM_RUN
fi

