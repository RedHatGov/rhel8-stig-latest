# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_pcscd

class enable_pcscd {
  service {'pcscd':
    enable => true,
    ensure => 'running',
  }
}