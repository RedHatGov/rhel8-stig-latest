# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_mdmonitor

class disable_mdmonitor {
  service {'mdmonitor':
    enable => false,
    ensure => 'stopped',
  }
}