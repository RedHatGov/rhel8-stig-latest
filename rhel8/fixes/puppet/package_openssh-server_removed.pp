# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_openssh-server

class remove_openssh-server {
  package { 'openssh-server':
    ensure => 'purged',
  }
}