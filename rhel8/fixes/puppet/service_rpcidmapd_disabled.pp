# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_rpcidmapd

class disable_rpcidmapd {
  service {'rpcidmapd':
    enable => false,
    ensure => 'stopped',
  }
}