# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_rhnsd

class disable_rhnsd {
  service {'rhnsd':
    enable => false,
    ensure => 'stopped',
  }
}