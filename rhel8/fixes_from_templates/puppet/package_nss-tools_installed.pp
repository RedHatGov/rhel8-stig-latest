# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_nss-tools

class install_nss-tools {
  package { 'nss-tools':
    ensure => 'installed',
  }
}