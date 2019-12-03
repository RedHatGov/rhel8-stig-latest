# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_gssproxy

class remove_gssproxy {
  package { 'gssproxy':
    ensure => 'purged',
  }
}