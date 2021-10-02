#!/bin/bash

COMMANDS=$(ls ./bin)
for COMMAND in $COMMANDS
do
   SCRIPTS+=("/usr/local/bin/$COMMAND")
done

sudo chmod +x ${SCRIPTS[*]}
