# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
. /usr/share/scap-security-guide/remediation_functions

#
# Set runtime for kernel.kptr_restrict
#
/sbin/sysctl -q -n -w kernel.kptr_restrict="1"

#
# If kernel.kptr_restrict present in /etc/sysctl.conf, change value to "1"
#	else, add "kernel.kptr_restrict = 1" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^kernel.kptr_restrict' "1" '@CCENUM@'