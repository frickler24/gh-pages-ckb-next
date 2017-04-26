#!/bin/bash

####
# Script to generate a link file for a given directory name
####

# Check for dirnames to be ignored
IFS=$'\n'
for elem in $(cat ${TRAVIS_BUILD_DIR}/documentation/dirs_to_ignore) ; do
	if [ x$1 == x${elem} ] ; then
		echo "Ignoring directory ${elem}"
		exit 0
	fi
done

# dirnames are in ./directoy but we need directory only
DIRNAME=$(echo $1 | cut -d/ -f2)
echo "Generating link for ${DIRNAME}"

# Assume that content file was cleared before the first call.
sed s/BRANCH/$DIRNAME/g snippet-file >> content
exit 0

