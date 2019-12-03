# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_abrt-addon-python

class remove_abrt-addon-python {
  package { 'abrt-addon-python':
    ensure => 'purged',
  }
}