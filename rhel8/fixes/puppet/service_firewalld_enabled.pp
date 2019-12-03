# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_firewalld

class enable_firewalld {
  service {'firewalld':
    enable => true,
    ensure => 'running',
  }
}