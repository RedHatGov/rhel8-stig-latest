# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_abrt-plugin-rhtsupport

class remove_abrt-plugin-rhtsupport {
  package { 'abrt-plugin-rhtsupport':
    ensure => 'purged',
  }
}