# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_inetutils-telnetd

class remove_inetutils-telnetd {
  package { 'inetutils-telnetd':
    ensure => 'purged',
  }
}