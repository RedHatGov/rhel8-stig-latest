# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_iptables

class enable_iptables {
  service {'iptables':
    enable => true,
    ensure => 'running',
  }
}