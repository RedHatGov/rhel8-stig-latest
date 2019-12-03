# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_telnetd

class remove_telnetd {
  package { 'telnetd':
    ensure => 'purged',
  }
}