# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_certmonger

class disable_certmonger {
  service {'certmonger':
    enable => false,
    ensure => 'stopped',
  }
}