# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low
include remove_talk-server

class remove_talk-server {
  package { 'talk-server':
    ensure => 'purged',
  }
}