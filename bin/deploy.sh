#!/bin/bash -e

DIR=bin
BASEDIR=`dirname $0`/..
VERSION=`cat $BASEDIR/VERSION`

if [ -d "$DIR" ]; then
	echo "Uploading to Nexus..."
	curl -u stratio:${NEXUSPASS} --upload-file bin/etcdtool-stratio-${VERSION} http://sodio.stratio.com/repository/paas/ansible/
else
	echo "Run 'make package' first"
	exit 1
fi
