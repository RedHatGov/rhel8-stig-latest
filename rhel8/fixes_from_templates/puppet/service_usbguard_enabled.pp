# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_usbguard

class enable_usbguard {
  service {'usbguard':
    enable => true,
    ensure => 'running',
  }
}