# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_acpid

class disable_acpid {
  service {'acpid':
    enable => false,
    ensure => 'stopped',
  }
}