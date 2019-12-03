# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_pcsc-lite

class install_pcsc-lite {
  package { 'pcsc-lite':
    ensure => 'installed',
  }
}