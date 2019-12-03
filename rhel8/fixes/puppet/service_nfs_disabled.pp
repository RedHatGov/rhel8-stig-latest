# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_nfs

class disable_nfs {
  service {'nfs':
    enable => false,
    ensure => 'stopped',
  }
}