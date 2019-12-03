# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_qpidd

class disable_qpidd {
  service {'qpidd':
    enable => false,
    ensure => 'stopped',
  }
}