class jenkinsjobbuilder::install {

    package { ['python', 'python-pip']:
        ensure => present
    }

    package { ['argparse', 'jenkinsjobbuilder']:
        ensure   => present,
        provider => pip,
        require  => Package['python-pip']
    }
}
