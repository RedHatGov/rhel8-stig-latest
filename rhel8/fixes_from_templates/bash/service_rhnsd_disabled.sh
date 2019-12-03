# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv,multi_platform_sle
# reboot = false
# strategy = disable
# complexity = low
# disruption = low


SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" stop 'rhnsd.service'
"$SYSTEMCTL_EXEC" disable 'rhnsd.service'
"$SYSTEMCTL_EXEC" mask 'rhnsd.service'
# Disable socket activation if we have a unit file for it
if "$SYSTEMCTL_EXEC" list-unit-files | grep -q '^rhnsd.socket'; then
    "$SYSTEMCTL_EXEC" stop 'rhnsd.socket'
    "$SYSTEMCTL_EXEC" disable 'rhnsd.socket'
    "$SYSTEMCTL_EXEC" mask 'rhnsd.socket'
fi
# The service may not be running because it has been started and failed,
# so let's reset the state so OVAL checks pass.
# Service should be 'inactive', not 'failed' after reboot though.
"$SYSTEMCTL_EXEC" reset-failed 'rhnsd.service' || true
