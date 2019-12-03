# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_cgconfig

class disable_cgconfig {
  service {'cgconfig':
    enable => false,
    ensure => 'stopped',
  }
}