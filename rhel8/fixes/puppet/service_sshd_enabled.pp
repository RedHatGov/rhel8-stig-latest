# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_sshd

class enable_sshd {
  service {'sshd':
    enable => true,
    ensure => 'running',
  }
}