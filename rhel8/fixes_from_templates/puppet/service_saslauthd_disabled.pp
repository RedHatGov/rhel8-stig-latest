# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_saslauthd

class disable_saslauthd {
  service {'saslauthd':
    enable => false,
    ensure => 'stopped',
  }
}