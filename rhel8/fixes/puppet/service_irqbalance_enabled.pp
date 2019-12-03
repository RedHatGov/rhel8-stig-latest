# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_irqbalance

class enable_irqbalance {
  service {'irqbalance':
    enable => true,
    ensure => 'running',
  }
}