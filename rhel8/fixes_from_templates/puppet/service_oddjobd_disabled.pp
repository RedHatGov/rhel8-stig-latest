# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_oddjobd

class disable_oddjobd {
  service {'oddjobd':
    enable => false,
    ensure => 'stopped',
  }
}