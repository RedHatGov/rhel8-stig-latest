# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_tftp

class disable_tftp {
  service {'tftp':
    enable => false,
    ensure => 'stopped',
  }
}