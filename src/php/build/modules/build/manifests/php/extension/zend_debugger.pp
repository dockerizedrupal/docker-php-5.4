class build::extension::zend_debugger {
  require build::php

  file { '/usr/local/src/phpfarm/inst/php-5.4.42/lib/php/extensions/no-debug-non-zts-20100525/ZendDebugger.so':
    ensure => present,
    source => 'puppet:///modules/build/tmp/ZendDebugger.so'
  }
}