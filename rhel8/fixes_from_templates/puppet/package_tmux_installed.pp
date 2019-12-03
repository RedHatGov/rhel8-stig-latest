# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_tmux

class install_tmux {
  package { 'tmux':
    ensure => 'installed',
  }
}