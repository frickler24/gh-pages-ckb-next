#!/bin/bash
if [ "x$1" == "x." ] ; then echo "found ., ignored" ; exit 0; fi
if [ "x$1" == "x./.git" ] ; then echo "found .git, ignored" ; exit 0; fi
if [ "x$1" == "x./bin" ] ; then echo "found bin, ignored" ; exit 0; fi

DIRNAME=$(echo $1 | cut -d/ -f2)
echo "proceeding with ${DIRNAME}"
sed s/BRANCH/$DIRNAME/g snippet-file >> content
