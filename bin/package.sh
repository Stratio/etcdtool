BASEDIR=`dirname $0`/..

cd $BASEDIR

CURRENT_PATH=`pwd`



VERSION=`cat VERSION`

export GOROOT=$CURRENT_PATH/go

export GOPATH=$CURRENT_PATH

wget http://tools.stratio.com/go/go1.9.7.linux-amd64.tar.gz

tar -xvzf go1.9.7.linux-amd64.tar.gz 

./build
mv bin/etcdtool bin/etcdtool-stratio-$VERSION
