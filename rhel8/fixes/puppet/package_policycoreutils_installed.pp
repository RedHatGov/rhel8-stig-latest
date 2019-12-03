# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_policycoreutils

class install_policycoreutils {
  package { 'policycoreutils':
    ensure => 'installed',
  }
}