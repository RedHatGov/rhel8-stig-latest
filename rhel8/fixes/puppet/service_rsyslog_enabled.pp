# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_rsyslog

class enable_rsyslog {
  service {'rsyslog':
    enable => true,
    ensure => 'running',
  }
}