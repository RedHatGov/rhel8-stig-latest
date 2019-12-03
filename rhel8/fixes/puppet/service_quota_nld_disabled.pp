# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_quota_nld

class disable_quota_nld {
  service {'quota_nld':
    enable => false,
    ensure => 'stopped',
  }
}