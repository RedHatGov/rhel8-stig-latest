# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_rsh

class disable_rsh {
  service {'rsh':
    enable => false,
    ensure => 'stopped',
  }
}