# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_avahi-daemon

class disable_avahi-daemon {
  service {'avahi-daemon':
    enable => false,
    ensure => 'stopped',
  }
}