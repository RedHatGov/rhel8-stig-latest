# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_nis

class remove_nis {
  package { 'nis':
    ensure => 'purged',
  }
}