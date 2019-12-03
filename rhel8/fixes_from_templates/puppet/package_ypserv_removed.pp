# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_ypserv

class remove_ypserv {
  package { 'ypserv':
    ensure => 'purged',
  }
}