# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_messagebus

class disable_messagebus {
  service {'messagebus':
    enable => false,
    ensure => 'stopped',
  }
}