# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_setroubleshoot

class remove_setroubleshoot {
  package { 'setroubleshoot':
    ensure => 'purged',
  }
}