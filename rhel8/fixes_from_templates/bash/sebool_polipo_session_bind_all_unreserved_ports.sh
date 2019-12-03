# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Include source function library.
. /usr/share/scap-security-guide/remediation_functions


populate var_polipo_session_bind_all_unreserved_ports

setsebool -P polipo_session_bind_all_unreserved_ports $var_polipo_session_bind_all_unreserved_ports
