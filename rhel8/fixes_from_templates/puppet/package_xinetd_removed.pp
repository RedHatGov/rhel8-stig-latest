# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_xinetd

class remove_xinetd {
  package { 'xinetd':
    ensure => 'purged',
  }
}