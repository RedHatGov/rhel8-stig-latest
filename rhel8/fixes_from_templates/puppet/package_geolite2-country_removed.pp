# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_geolite2-country

class remove_geolite2-country {
  package { 'geolite2-country':
    ensure => 'purged',
  }
}