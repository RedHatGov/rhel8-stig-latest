# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_binutils

class install_binutils {
  package { 'binutils':
    ensure => 'installed',
  }
}