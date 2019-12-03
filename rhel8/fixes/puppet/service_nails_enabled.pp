# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_nails

class enable_nails {
  service {'nails':
    enable => true,
    ensure => 'running',
  }
}