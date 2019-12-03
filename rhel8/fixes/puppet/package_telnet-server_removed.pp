# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_telnet-server

class remove_telnet-server {
  package { 'telnet-server':
    ensure => 'purged',
  }
}