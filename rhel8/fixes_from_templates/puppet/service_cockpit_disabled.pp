# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_cockpit

class disable_cockpit {
  service {'cockpit':
    enable => false,
    ensure => 'stopped',
  }
}