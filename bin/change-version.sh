#!/bin/bash -e

BASEDIR=`dirname $0`/..

cd $BASEDIR

echo "Modifying version to: $1"
echo $1 > VERSION
