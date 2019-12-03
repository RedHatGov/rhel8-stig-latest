# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_rpcsvcgssd

class disable_rpcsvcgssd {
  service {'rpcsvcgssd':
    enable => false,
    ensure => 'stopped',
  }
}