# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_named

class disable_named {
  service {'named':
    enable => false,
    ensure => 'stopped',
  }
}