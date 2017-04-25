#!/bin/bash

####
# Script to generate a link file for a given directory name
####

# Check which dirnames are unwanted
if [ "x$1" == "x." ] ; then exit 0; fi
if [ "x$1" == "x./.git" ] ; then exit 0; fi
if [ "x$1" == "x./bin" ] ; then exit 0; fi
if [ "x$1" == "x./doxygenDoc" ] ; then exit 0; fi

# dirnames are in ./directoy but we need directory only
DIRNAME=$(echo $1 | cut -d/ -f2)
echo "Generating link for ${DIRNAME}"

# Assume that content file was cleared before the first call.
sed s/BRANCH/$DIRNAME/g snippet-file >> content
exit 0

