# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_bluetooth

class disable_bluetooth {
  service {'bluetooth':
    enable => false,
    ensure => 'stopped',
  }
}