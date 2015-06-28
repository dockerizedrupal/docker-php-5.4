class build::php::extension::xdebug {
  require build::php

  file { '/tmp/xdebug-2.2.6.tgz':
    ensure => present,
    source => 'puppet:///modules/build/tmp/xdebug-2.2.6.tgz'
  }

  bash_exec { 'cd /tmp && tar xzf xdebug-2.2.6.tgz':
    require => File['/tmp/xdebug-2.2.6.tgz']
  }

  bash_exec { 'cd /tmp/xdebug-2.2.6 && phpize-5.4.42':
    require => Bash_exec['cd /tmp && tar xzf xdebug-2.2.6.tgz']
  }

  bash_exec { 'cd /tmp/xdebug-2.2.6 && ./configure --with-php-config=/usr/local/src/phpfarm/inst/bin/php-config-5.4.42':
    timeout => 0,
    require => Bash_exec['cd /tmp/xdebug-2.2.6 && phpize-5.4.42']
  }

  bash_exec { 'cd /tmp/xdebug-2.2.6 && make':
    timeout => 0,
    require => Bash_exec['cd /tmp/xdebug-2.2.6 && ./configure --with-php-config=/usr/local/src/phpfarm/inst/bin/php-config-5.4.42']
  }

  bash_exec { 'cd /tmp/xdebug-2.2.6 && make install':
    timeout => 0,
    require => Bash_exec['cd /tmp/xdebug-2.2.6 && make']
  }
}