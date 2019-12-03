# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_crond

class enable_crond {
  service {'crond':
    enable => true,
    ensure => 'running',
  }
}