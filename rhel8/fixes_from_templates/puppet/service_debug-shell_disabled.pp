# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_debug-shell

class disable_debug-shell {
  service {'debug-shell':
    enable => false,
    ensure => 'stopped',
  }
}