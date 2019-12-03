# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv,multi_platform_sle
# reboot = false
# strategy = disable
# complexity = low
# disruption = low


SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" stop 'netconsole.service'
"$SYSTEMCTL_EXEC" disable 'netconsole.service'
"$SYSTEMCTL_EXEC" mask 'netconsole.service'
# Disable socket activation if we have a unit file for it
if "$SYSTEMCTL_EXEC" list-unit-files | grep -q '^netconsole.socket'; then
    "$SYSTEMCTL_EXEC" stop 'netconsole.socket'
    "$SYSTEMCTL_EXEC" disable 'netconsole.socket'
    "$SYSTEMCTL_EXEC" mask 'netconsole.socket'
fi
# The service may not be running because it has been started and failed,
# so let's reset the state so OVAL checks pass.
# Service should be 'inactive', not 'failed' after reboot though.
"$SYSTEMCTL_EXEC" reset-failed 'netconsole.service' || true
