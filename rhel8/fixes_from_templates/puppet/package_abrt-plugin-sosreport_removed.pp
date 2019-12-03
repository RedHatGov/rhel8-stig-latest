# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_abrt-plugin-sosreport

class remove_abrt-plugin-sosreport {
  package { 'abrt-plugin-sosreport':
    ensure => 'purged',
  }
}