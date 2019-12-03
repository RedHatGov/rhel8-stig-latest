# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_sssd

class install_sssd {
  package { 'sssd':
    ensure => 'installed',
  }
}