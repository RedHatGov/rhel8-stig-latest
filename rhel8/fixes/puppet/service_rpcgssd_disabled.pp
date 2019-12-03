# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_rpcgssd

class disable_rpcgssd {
  service {'rpcgssd':
    enable => false,
    ensure => 'stopped',
  }
}