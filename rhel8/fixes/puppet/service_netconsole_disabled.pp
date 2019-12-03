# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_netconsole

class disable_netconsole {
  service {'netconsole':
    enable => false,
    ensure => 'stopped',
  }
}