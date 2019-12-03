# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_tftp

class remove_tftp {
  package { 'tftp':
    ensure => 'purged',
  }
}