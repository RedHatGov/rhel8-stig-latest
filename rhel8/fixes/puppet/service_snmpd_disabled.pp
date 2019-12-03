# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_snmpd

class disable_snmpd {
  service {'snmpd':
    enable => false,
    ensure => 'stopped',
  }
}