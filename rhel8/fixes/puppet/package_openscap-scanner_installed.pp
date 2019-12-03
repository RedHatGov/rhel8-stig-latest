# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_openscap-scanner

class install_openscap-scanner {
  package { 'openscap-scanner':
    ensure => 'installed',
  }
}