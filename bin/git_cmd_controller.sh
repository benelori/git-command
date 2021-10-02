#!/bin/bash

set -e

# This script is a central controller that manages git commands via project specific commands.
# Each project will have a different branching strategy, so the creation of new branches will be configured
# by project specific commands.

# Project specific commands can be found in git command specific directories.
GIT_COMMAND_DIR=.git_cmd

# From the directory where we execute the command, we search recursively in the parent directories for a git command directory.
# If one is found, then we will delegate the command to the equivalent one in the directory
# e.g. executing this: gbf will result in the execution of $GIT_COMMAND_DIR/gbf, which can be specific for projects.
# e.g. $GIT_COMMAND_DIR/gbf branch_name can be git checkout -b feature/branch_name origin/main

WORKING_DIR=$PWD

while [ ! -d "$GIT_COMMAND_DIR" ]
  do cd ..;
  done;

PATH_TO_CMD="$(pwd)/$GIT_COMMAND_DIR"

CMD="$PATH_TO_CMD/$1"

echo "----------The full path to the command is--------------"
echo "$CMD"
echo "-------------------------------------------------------"

cd "$WORKING_DIR"

/bin/bash "$CMD" $2

git branch -vv | grep $2
