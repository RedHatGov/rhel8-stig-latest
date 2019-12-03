# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
. /usr/share/scap-security-guide/remediation_functions

#
# Set runtime for user.max_user_namespaces
#
/sbin/sysctl -q -n -w user.max_user_namespaces="0"

#
# If user.max_user_namespaces present in /etc/sysctl.conf, change value to "0"
#	else, add "user.max_user_namespaces = 0" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^user.max_user_namespaces' "0" '@CCENUM@'