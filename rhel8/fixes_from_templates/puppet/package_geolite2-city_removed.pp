# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_geolite2-city

class remove_geolite2-city {
  package { 'geolite2-city':
    ensure => 'purged',
  }
}