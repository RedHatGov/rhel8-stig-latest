# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_systemd-coredump

class disable_systemd-coredump {
  service {'systemd-coredump':
    enable => false,
    ensure => 'stopped',
  }
}