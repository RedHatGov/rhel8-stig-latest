# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_squid

class remove_squid {
  package { 'squid':
    ensure => 'purged',
  }
}