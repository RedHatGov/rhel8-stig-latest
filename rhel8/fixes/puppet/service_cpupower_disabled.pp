# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_cpupower

class disable_cpupower {
  service {'cpupower':
    enable => false,
    ensure => 'stopped',
  }
}