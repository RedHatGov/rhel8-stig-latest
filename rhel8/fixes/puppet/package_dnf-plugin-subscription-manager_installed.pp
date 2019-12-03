# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_dnf-plugin-subscription-manager

class install_dnf-plugin-subscription-manager {
  package { 'dnf-plugin-subscription-manager':
    ensure => 'installed',
  }
}