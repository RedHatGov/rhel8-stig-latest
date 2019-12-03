# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_rhsmcertd

class disable_rhsmcertd {
  service {'rhsmcertd':
    enable => false,
    ensure => 'stopped',
  }
}