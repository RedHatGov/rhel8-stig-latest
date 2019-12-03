# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_rpcbind

class disable_rpcbind {
  service {'rpcbind':
    enable => false,
    ensure => 'stopped',
  }
}