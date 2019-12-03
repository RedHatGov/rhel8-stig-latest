# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_ip6tables

class enable_ip6tables {
  service {'ip6tables':
    enable => true,
    ensure => 'running',
  }
}