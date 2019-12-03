# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_quagga

class remove_quagga {
  package { 'quagga':
    ensure => 'purged',
  }
}