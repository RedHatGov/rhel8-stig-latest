# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_fapolicyd

class enable_fapolicyd {
  service {'fapolicyd':
    enable => true,
    ensure => 'running',
  }
}