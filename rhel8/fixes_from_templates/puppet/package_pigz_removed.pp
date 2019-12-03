# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_pigz

class remove_pigz {
  package { 'pigz':
    ensure => 'purged',
  }
}