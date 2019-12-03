# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_autofs

class disable_autofs {
  service {'autofs':
    enable => false,
    ensure => 'stopped',
  }
}