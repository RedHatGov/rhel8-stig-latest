# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_ypbind

class remove_ypbind {
  package { 'ypbind':
    ensure => 'purged',
  }
}