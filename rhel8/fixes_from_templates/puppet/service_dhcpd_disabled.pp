# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_dhcpd

class disable_dhcpd {
  service {'dhcpd':
    enable => false,
    ensure => 'stopped',
  }
}