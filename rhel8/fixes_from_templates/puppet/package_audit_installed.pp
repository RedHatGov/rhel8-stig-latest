# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_audit

class install_audit {
  package { 'audit':
    ensure => 'installed',
  }
}