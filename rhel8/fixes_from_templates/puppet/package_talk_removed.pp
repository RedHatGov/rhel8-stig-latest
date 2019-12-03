# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_talk

class remove_talk {
  package { 'talk':
    ensure => 'purged',
  }
}