# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_abrt-plugin-logger

class remove_abrt-plugin-logger {
  package { 'abrt-plugin-logger':
    ensure => 'purged',
  }
}