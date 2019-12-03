# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_kdump

class disable_kdump {
  service {'kdump':
    enable => false,
    ensure => 'stopped',
  }
}