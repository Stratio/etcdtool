@Library('libpipelines@master') _


hose {
    EMAIL = 'eos'
    MODULE = 'etcdtool'
    REPOSITORY = 'etcdtool'
    BUILDTOOL = 'make'
    DEVTIMEOUT = 180
    AGENT = 'centos-base-ssh-74'

    DEV = { config ->
    doPackage(config)
    doDeploy(config)
    }
}
