# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_krb5-workstation

class remove_krb5-workstation {
  package { 'krb5-workstation':
    ensure => 'purged',
  }
}