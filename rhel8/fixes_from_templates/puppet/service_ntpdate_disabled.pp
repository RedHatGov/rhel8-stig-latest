# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_ntpdate

class disable_ntpdate {
  service {'ntpdate':
    enable => false,
    ensure => 'stopped',
  }
}