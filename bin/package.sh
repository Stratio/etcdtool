BASEDIR=`dirname $0`/..

cd $BASEDIR

CURRENT_PATH=`pwd`



VERSION=`cat VERSION`

export GOROOT=$CURRENT_PATH/go

export GOPATH=$CURRENT_PATH

wget -q http://tools.stratio.com/go/go1.9.7.linux-amd64.tar.gz


tar -xvzf go1.9.7.linux-amd64.tar.gz 

$GOROOT/bin/go get github.com/bgentry/speakeasy
$GOROOT/bin/go get github.com/codegangsta/cli
$GOROOT/bin/go get github.com/coreos/etcd/client
$GOROOT/bin/go get github.com/coreos/etcd/pkg/transport
$GOROOT/bin/go get github.com/mickep76/etcdmap
$GOROOT/bin/go get github.com/mickep76/iodatafmt
$GOROOT/bin/go get github.com/xeipuuv/gojsonschema
$GOROOT/bin/go get golang.org/x/net/context
$GOROOT/bin/go get github.com/coreos/go-semver/semver
$GOROOT/bin/go get github.com/ugorji/go/codec

# Download source code of Vault v0.10.4
cd $GOPATH/src/github.com/coreos/etcd
git checkout remotes/origin/release-3.3
cd -


cd $GOPATH/src/github.com/mickep76/etcdtool

$GOROOT/bin/go build -o $CURRENT_PATH/bin/etcdtool-stratio-$VERSION .

