# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_gnutls-utils

class install_gnutls-utils {
  package { 'gnutls-utils':
    ensure => 'installed',
  }
}