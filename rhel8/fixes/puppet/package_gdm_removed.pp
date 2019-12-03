# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_gdm

class remove_gdm {
  package { 'gdm':
    ensure => 'purged',
  }
}