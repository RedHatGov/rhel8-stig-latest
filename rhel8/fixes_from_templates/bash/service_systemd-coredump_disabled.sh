# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv,multi_platform_sle
# reboot = false
# strategy = disable
# complexity = low
# disruption = low


SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" stop 'systemd-coredump.service'
"$SYSTEMCTL_EXEC" disable 'systemd-coredump.service'
"$SYSTEMCTL_EXEC" mask 'systemd-coredump.service'
# Disable socket activation if we have a unit file for it
if "$SYSTEMCTL_EXEC" list-unit-files | grep -q '^systemd-coredump.socket'; then
    "$SYSTEMCTL_EXEC" stop 'systemd-coredump.socket'
    "$SYSTEMCTL_EXEC" disable 'systemd-coredump.socket'
    "$SYSTEMCTL_EXEC" mask 'systemd-coredump.socket'
fi
# The service may not be running because it has been started and failed,
# so let's reset the state so OVAL checks pass.
# Service should be 'inactive', not 'failed' after reboot though.
"$SYSTEMCTL_EXEC" reset-failed 'systemd-coredump.service' || true
