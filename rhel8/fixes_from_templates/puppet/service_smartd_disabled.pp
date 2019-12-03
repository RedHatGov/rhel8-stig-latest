# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_smartd

class disable_smartd {
  service {'smartd':
    enable => false,
    ensure => 'stopped',
  }
}