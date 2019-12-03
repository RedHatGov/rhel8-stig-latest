# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_abrt-addon-kerneloops

class remove_abrt-addon-kerneloops {
  package { 'abrt-addon-kerneloops':
    ensure => 'purged',
  }
}