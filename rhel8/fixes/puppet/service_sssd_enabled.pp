# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_sssd

class enable_sssd {
  service {'sssd':
    enable => true,
    ensure => 'running',
  }
}