# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_opensc

class install_opensc {
  package { 'opensc':
    ensure => 'installed',
  }
}