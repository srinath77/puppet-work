# == Class: aravind
#
# Full description of class aravind here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { aravind:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class aravind {
      file { '/tmp/aravind':
             ensure => 'link',
             owner   => 'root',
             group  => 'root',
             target  => '/home/fun-files',
             }
      
      exec { 'create_needed_directory':
    command => '/bin/mkdir -p /tmp/needed/directory',
    creates => '/tmp/needed/directory'
  }

}      




