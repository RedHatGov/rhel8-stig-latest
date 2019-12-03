# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_dovecot

class disable_dovecot {
  service {'dovecot':
    enable => false,
    ensure => 'stopped',
  }
}