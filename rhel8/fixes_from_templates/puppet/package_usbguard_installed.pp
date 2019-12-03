# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_usbguard

class install_usbguard {
  package { 'usbguard':
    ensure => 'installed',
  }
}