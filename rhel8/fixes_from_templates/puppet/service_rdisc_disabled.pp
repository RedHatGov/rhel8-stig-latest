# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_rdisc

class disable_rdisc {
  service {'rdisc':
    enable => false,
    ensure => 'stopped',
  }
}