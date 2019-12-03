# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
. /usr/share/scap-security-guide/remediation_functions

#
# Set runtime for net.ipv6.conf.all.disable_ipv6
#
/sbin/sysctl -q -n -w net.ipv6.conf.all.disable_ipv6="1"

#
# If net.ipv6.conf.all.disable_ipv6 present in /etc/sysctl.conf, change value to "1"
#	else, add "net.ipv6.conf.all.disable_ipv6 = 1" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^net.ipv6.conf.all.disable_ipv6' "1" '@CCENUM@'