# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_sudo

class install_sudo {
  package { 'sudo':
    ensure => 'installed',
  }
}