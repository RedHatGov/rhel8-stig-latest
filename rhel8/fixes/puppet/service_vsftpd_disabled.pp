# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_vsftpd

class disable_vsftpd {
  service {'vsftpd':
    enable => false,
    ensure => 'stopped',
  }
}