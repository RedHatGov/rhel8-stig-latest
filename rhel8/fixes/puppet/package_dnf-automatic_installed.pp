# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_dnf-automatic

class install_dnf-automatic {
  package { 'dnf-automatic':
    ensure => 'installed',
  }
}