# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_abrt-cli

class remove_abrt-cli {
  package { 'abrt-cli':
    ensure => 'purged',
  }
}