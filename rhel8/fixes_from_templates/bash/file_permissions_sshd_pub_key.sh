# platform = multi_platform_all
# reboot = false
# strategy = configure
# complexity = low
# disruption = low

find /etc/ssh/ -regex '^.*.pub$' -exec chmod 0644 {} \;
