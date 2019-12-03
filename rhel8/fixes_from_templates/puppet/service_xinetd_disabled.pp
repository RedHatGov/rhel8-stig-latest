# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_xinetd

class disable_xinetd {
  service {'xinetd':
    enable => false,
    ensure => 'stopped',
  }
}