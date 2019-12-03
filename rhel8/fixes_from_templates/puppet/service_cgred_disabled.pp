# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_cgred

class disable_cgred {
  service {'cgred':
    enable => false,
    ensure => 'stopped',
  }
}