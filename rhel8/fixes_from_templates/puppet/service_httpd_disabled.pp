# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_httpd

class disable_httpd {
  service {'httpd':
    enable => false,
    ensure => 'stopped',
  }
}