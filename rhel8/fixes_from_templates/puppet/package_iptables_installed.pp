# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_iptables

class install_iptables {
  package { 'iptables':
    ensure => 'installed',
  }
}