# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_rsh-server

class remove_rsh-server {
  package { 'rsh-server':
    ensure => 'purged',
  }
}