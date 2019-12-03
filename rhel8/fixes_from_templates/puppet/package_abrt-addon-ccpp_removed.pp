# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_abrt-addon-ccpp

class remove_abrt-addon-ccpp {
  package { 'abrt-addon-ccpp':
    ensure => 'purged',
  }
}