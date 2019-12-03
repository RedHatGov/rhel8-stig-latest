# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_rsh

class remove_rsh {
  package { 'rsh':
    ensure => 'purged',
  }
}