# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_sshd

class disable_sshd {
  service {'sshd':
    enable => false,
    ensure => 'stopped',
  }
}