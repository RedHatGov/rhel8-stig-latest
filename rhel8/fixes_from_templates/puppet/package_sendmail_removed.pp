# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_sendmail

class remove_sendmail {
  package { 'sendmail':
    ensure => 'purged',
  }
}