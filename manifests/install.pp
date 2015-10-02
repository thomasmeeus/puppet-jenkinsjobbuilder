class jenkins-job-builder::install {

    package { ['python', 'python-pip']:
        ensure => present
    }

    package { ['argparse', 'jenkins-job-builder']:
        ensure   => present,
        provider => pip,
        require  => Package['python-pip']
    }
}
