# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Include source function library.
. /usr/share/scap-security-guide/remediation_functions


populate var_telepathy_connect_all_ports

setsebool -P telepathy_connect_all_ports $var_telepathy_connect_all_ports
