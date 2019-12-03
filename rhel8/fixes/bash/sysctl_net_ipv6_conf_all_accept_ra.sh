# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
. /usr/share/scap-security-guide/remediation_functions
populate sysctl_net_ipv6_conf_all_accept_ra_value

#
# Set runtime for net.ipv6.conf.all.accept_ra
#
/sbin/sysctl -q -n -w net.ipv6.conf.all.accept_ra="$sysctl_net_ipv6_conf_all_accept_ra_value"

#
# If net.ipv6.conf.all.accept_ra present in /etc/sysctl.conf, change value to appropriate value
#	else, add "net.ipv6.conf.all.accept_ra = value" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^net.ipv6.conf.all.accept_ra' "$sysctl_net_ipv6_conf_all_accept_ra_value" '@CCENUM@'