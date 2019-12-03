# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_subscription-manager

class install_subscription-manager {
  package { 'subscription-manager':
    ensure => 'installed',
  }
}