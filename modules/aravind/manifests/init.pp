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
}

/*


exec { "git_check":
    owner   => 'root',
    group   => 'root',
      cwd   =>  '/home',
    command => 'git --version > /tmp/git_version_check.txt',
}

exec { "git_install":
    owner => 'root',
    group => 'root',
    cwd   => '/home',
    command => 'apt-get update && apt-get install -y git',
    unless  => ' cat /tmp/git_version_check == /^d{*}$/ ',
}
*/

/* 
exec { "install-foo":
    command => "curl -s -o /tmp/foo.run http://example.com/foo.run \
                && chmod o+x /tmp/foo.run \
                && /tmp/foo.run ",
    creates => "/usr/local/bin/foo",
}
*/

/* 
$serial = "2009092501"
$serialfile = "/var/log/puppet/foo.serial"
exec { "install-foo":
    command => "curl -s -o /tmp/foo.run http://example.com/foo.run \
                && chmod o+x /tmp/foo.run \
                && /tmp/foo.run \
                && echo \"$serial\" > \"$serialfile\"",",
    unless  => "test \"`cat $serialfile 2>/dev/null`\" = \"$serial\"",
}
*/

