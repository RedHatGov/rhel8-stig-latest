# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_rlogin

class disable_rlogin {
  service {'rlogin':
    enable => false,
    ensure => 'stopped',
  }
}