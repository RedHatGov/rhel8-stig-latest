# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_atd

class disable_atd {
  service {'atd':
    enable => false,
    ensure => 'stopped',
  }
}