# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_ntp

class enable_ntp {
  service {'ntp':
    enable => true,
    ensure => 'running',
  }
}