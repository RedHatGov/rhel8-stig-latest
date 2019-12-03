# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_fapolicyd

class install_fapolicyd {
  package { 'fapolicyd':
    ensure => 'installed',
  }
}