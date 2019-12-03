# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_abrtd

class disable_abrtd {
  service {'abrtd':
    enable => false,
    ensure => 'stopped',
  }
}