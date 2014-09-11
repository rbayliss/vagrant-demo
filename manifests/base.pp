
package { "mysql-client":
  ensure => present,
}
include lcphp
include composer
include lcphp::drush

# Use socat to create a tunnel for the MySQL socket out to the host machine.
# This means we can leave database settings pointed at localhost
# no matter how many vagrant boxes we access the site through.
class { "socat":
  param => "unix-listen:/tmp/mysql.sock,group=daemon,perm=0777,fork,unlink-early \\TCP:${vagrant_host_ip}:3306",
}
file { "/etc/mysql/conf.d/socat.cnf":
  ensure => file,
  content => "[client]\nsocket = /tmp/mysql.sock",
  require => Package['mysql-client'],
  before => Class['lcphp']
}

class {"lcphp::xdebug":
  remote_host => $vagrant_host_ip,
  remote_port=> 9000,
  idekey => 'vagrant'
}
class {"lcphp::vagrant":
  mysql_sock => "/tmp/mysql.sock",
}
include lcphp::default_vhost
#include lcbehat::lcbehat
