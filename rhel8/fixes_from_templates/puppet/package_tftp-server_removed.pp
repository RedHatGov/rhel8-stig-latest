# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_tftp-server

class remove_tftp-server {
  package { 'tftp-server':
    ensure => 'purged',
  }
}