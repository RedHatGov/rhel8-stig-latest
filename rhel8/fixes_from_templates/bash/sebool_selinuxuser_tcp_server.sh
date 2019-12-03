# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Include source function library.
. /usr/share/scap-security-guide/remediation_functions


populate var_selinuxuser_tcp_server

setsebool -P selinuxuser_tcp_server $var_selinuxuser_tcp_server
