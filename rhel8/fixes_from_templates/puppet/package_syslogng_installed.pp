# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_syslogng

class install_syslogng {
  package { 'syslogng':
    ensure => 'installed',
  }
}