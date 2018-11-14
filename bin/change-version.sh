#!/bin/bash -e

BASEDIR=`dirname $0`/..

cd $BASEDIR

echo "Modifying version to: $1"
echo $1 > VERSION

sed -i "s/const Version =.*/const Version = \"$1\"/" src/github.com/mickep76/etcdtool/version.go

