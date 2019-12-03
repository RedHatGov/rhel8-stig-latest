# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_net-snmp

class remove_net-snmp {
  package { 'net-snmp':
    ensure => 'purged',
  }
}