# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_cups

class disable_cups {
  service {'cups':
    enable => false,
    ensure => 'stopped',
  }
}