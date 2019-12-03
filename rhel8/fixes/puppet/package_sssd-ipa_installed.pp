# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
include install_sssd-ipa

class install_sssd-ipa {
  package { 'sssd-ipa':
    ensure => 'installed',
  }
}