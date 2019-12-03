# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_nfslock

class disable_nfslock {
  service {'nfslock':
    enable => false,
    ensure => 'stopped',
  }
}