# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_rsyslog-gnutls

class install_rsyslog-gnutls {
  package { 'rsyslog-gnutls':
    ensure => 'installed',
  }
}