# platform = multi_platform_all
# reboot = false
# strategy = configure
# complexity = low
# disruption = low

find /etc/ssh/ -regex '^.*_key$' -exec chmod 0640 {} \;
