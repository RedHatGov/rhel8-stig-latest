# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_libreswan

class install_libreswan {
  package { 'libreswan':
    ensure => 'installed',
  }
}