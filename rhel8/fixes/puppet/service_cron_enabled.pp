# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include enable_cron

class enable_cron {
  service {'cron':
    enable => true,
    ensure => 'running',
  }
}