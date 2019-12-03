# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_iprutils

class remove_iprutils {
  package { 'iprutils':
    ensure => 'purged',
  }
}