# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
. /usr/share/scap-security-guide/remediation_functions

#
# Set runtime for kernel.core_pattern
#
/sbin/sysctl -q -n -w kernel.core_pattern="|/bin/false"

#
# If kernel.core_pattern present in /etc/sysctl.conf, change value to "|/bin/false"
#	else, add "kernel.core_pattern = |/bin/false" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^kernel.core_pattern' "|/bin/false" '@CCENUM@'