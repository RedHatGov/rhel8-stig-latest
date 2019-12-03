# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_tcp_wrappers

class install_tcp_wrappers {
  package { 'tcp_wrappers':
    ensure => 'installed',
  }
}