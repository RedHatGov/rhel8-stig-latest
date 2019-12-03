# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_python3-subscription-manager-rhsm

class install_python3-subscription-manager-rhsm {
  package { 'python3-subscription-manager-rhsm':
    ensure => 'installed',
  }
}