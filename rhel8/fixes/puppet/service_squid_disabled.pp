# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_squid

class disable_squid {
  service {'squid':
    enable => false,
    ensure => 'stopped',
  }
}