# platform = multi_platform_all
# reboot = false
# strategy = configure
# complexity = low
# disruption = low

find /etc/httpd/conf.d/ -regex '^.*$' -exec chmod 0640 {} \;
