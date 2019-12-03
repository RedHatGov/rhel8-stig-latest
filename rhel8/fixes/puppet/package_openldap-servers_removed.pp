# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_openldap-servers

class remove_openldap-servers {
  package { 'openldap-servers':
    ensure => 'purged',
  }
}