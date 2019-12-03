# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
. /usr/share/scap-security-guide/remediation_functions
populate sysctl_net_ipv4_conf_default_log_martians_value

#
# Set runtime for net.ipv4.conf.default.log_martians
#
/sbin/sysctl -q -n -w net.ipv4.conf.default.log_martians="$sysctl_net_ipv4_conf_default_log_martians_value"

#
# If net.ipv4.conf.default.log_martians present in /etc/sysctl.conf, change value to appropriate value
#	else, add "net.ipv4.conf.default.log_martians = value" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^net.ipv4.conf.default.log_martians' "$sysctl_net_ipv4_conf_default_log_martians_value" '@CCENUM@'