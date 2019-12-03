# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_tar

class install_tar {
  package { 'tar':
    ensure => 'installed',
  }
}