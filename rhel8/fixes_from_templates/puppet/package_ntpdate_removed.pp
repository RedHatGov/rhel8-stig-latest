# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_ntpdate

class remove_ntpdate {
  package { 'ntpdate':
    ensure => 'purged',
  }
}