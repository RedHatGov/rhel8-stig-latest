# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_tuned

class remove_tuned {
  package { 'tuned':
    ensure => 'purged',
  }
}