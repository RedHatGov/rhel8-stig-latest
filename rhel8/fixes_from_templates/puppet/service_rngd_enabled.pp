# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_rngd

class enable_rngd {
  service {'rngd':
    enable => true,
    ensure => 'running',
  }
}