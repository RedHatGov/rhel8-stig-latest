# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_vim

class install_vim {
  package { 'vim':
    ensure => 'installed',
  }
}