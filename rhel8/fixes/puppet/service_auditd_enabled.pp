# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_auditd

class enable_auditd {
  service {'auditd':
    enable => true,
    ensure => 'running',
  }
}