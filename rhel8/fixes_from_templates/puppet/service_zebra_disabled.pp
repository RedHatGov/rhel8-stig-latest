# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_zebra

class disable_zebra {
  service {'zebra':
    enable => false,
    ensure => 'stopped',
  }
}