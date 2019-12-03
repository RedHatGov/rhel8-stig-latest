# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_vsftpd

class remove_vsftpd {
  package { 'vsftpd':
    ensure => 'purged',
  }
}