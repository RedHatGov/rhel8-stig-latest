# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_audispd-plugins

class install_audispd-plugins {
  package { 'audispd-plugins':
    ensure => 'installed',
  }
}