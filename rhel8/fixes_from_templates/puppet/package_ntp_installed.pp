# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_ntp

class install_ntp {
  package { 'ntp':
    ensure => 'installed',
  }
}