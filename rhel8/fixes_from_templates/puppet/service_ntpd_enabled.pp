# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_ntpd

class enable_ntpd {
  service {'ntpd':
    enable => true,
    ensure => 'running',
  }
}