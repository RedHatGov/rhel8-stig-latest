# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
. /usr/share/scap-security-guide/remediation_functions
populate sysctl_net_ipv4_icmp_ignore_bogus_error_responses_value

#
# Set runtime for net.ipv4.icmp_ignore_bogus_error_responses
#
/sbin/sysctl -q -n -w net.ipv4.icmp_ignore_bogus_error_responses="$sysctl_net_ipv4_icmp_ignore_bogus_error_responses_value"

#
# If net.ipv4.icmp_ignore_bogus_error_responses present in /etc/sysctl.conf, change value to appropriate value
#	else, add "net.ipv4.icmp_ignore_bogus_error_responses = value" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^net.ipv4.icmp_ignore_bogus_error_responses' "$sysctl_net_ipv4_icmp_ignore_bogus_error_responses_value" '@CCENUM@'