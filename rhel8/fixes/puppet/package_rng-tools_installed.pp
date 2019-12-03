# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_rng-tools

class install_rng-tools {
  package { 'rng-tools':
    ensure => 'installed',
  }
}