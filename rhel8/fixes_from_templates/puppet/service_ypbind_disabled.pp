# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_ypbind

class disable_ypbind {
  service {'ypbind':
    enable => false,
    ensure => 'stopped',
  }
}