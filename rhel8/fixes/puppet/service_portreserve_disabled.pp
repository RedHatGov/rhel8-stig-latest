# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_portreserve

class disable_portreserve {
  service {'portreserve':
    enable => false,
    ensure => 'stopped',
  }
}