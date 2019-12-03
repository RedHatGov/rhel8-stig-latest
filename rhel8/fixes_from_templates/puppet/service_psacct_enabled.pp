# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_psacct

class enable_psacct {
  service {'psacct':
    enable => true,
    ensure => 'running',
  }
}