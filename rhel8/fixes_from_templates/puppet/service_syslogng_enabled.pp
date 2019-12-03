# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_syslogng

class enable_syslogng {
  service {'syslogng':
    enable => true,
    ensure => 'running',
  }
}