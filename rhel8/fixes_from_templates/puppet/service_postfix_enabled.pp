# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_postfix

class enable_postfix {
  service {'postfix':
    enable => true,
    ensure => 'running',
  }
}