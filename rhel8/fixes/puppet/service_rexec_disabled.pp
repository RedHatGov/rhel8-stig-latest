# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_rexec

class disable_rexec {
  service {'rexec':
    enable => false,
    ensure => 'stopped',
  }
}