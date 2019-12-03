# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_dovecot

class remove_dovecot {
  package { 'dovecot':
    ensure => 'purged',
  }
}