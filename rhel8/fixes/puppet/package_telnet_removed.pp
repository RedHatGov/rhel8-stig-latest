# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_telnet

class remove_telnet {
  package { 'telnet':
    ensure => 'purged',
  }
}