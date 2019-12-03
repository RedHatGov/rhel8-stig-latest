# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include disable_smb

class disable_smb {
  service {'smb':
    enable => false,
    ensure => 'stopped',
  }
}