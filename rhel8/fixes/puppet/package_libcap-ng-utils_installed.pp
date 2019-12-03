# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_libcap-ng-utils

class install_libcap-ng-utils {
  package { 'libcap-ng-utils':
    ensure => 'installed',
  }
}