# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_telnetd-ssl

class remove_telnetd-ssl {
  package { 'telnetd-ssl':
    ensure => 'purged',
  }
}