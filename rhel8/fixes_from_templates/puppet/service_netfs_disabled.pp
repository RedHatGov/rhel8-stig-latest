# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_netfs

class disable_netfs {
  service {'netfs':
    enable => false,
    ensure => 'stopped',
  }
}