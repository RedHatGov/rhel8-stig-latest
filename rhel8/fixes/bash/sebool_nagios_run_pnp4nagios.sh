# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Include source function library.
. /usr/share/scap-security-guide/remediation_functions


populate var_nagios_run_pnp4nagios

setsebool -P nagios_run_pnp4nagios $var_nagios_run_pnp4nagios