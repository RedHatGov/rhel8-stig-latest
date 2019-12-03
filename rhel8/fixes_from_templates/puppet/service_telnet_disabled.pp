# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_telnet

class disable_telnet {
  service {'telnet':
    enable => false,
    ensure => 'stopped',
  }
}