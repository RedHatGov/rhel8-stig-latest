# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_scap-security-guide

class install_scap-security-guide {
  package { 'scap-security-guide':
    ensure => 'installed',
  }
}