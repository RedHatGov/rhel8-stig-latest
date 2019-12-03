# platform = multi_platform_all
# reboot = false
# strategy = enable
# complexity = low
# disruption = low

SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" start 'dnf-automatic.timer'
"$SYSTEMCTL_EXEC" enable 'dnf-automatic.timer'