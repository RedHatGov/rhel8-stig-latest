# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_sysstat

class disable_sysstat {
  service {'sysstat':
    enable => false,
    ensure => 'stopped',
  }
}