# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
. /usr/share/scap-security-guide/remediation_functions

#
# Set runtime for kernel.perf_event_paranoid
#
/sbin/sysctl -q -n -w kernel.perf_event_paranoid="2"

#
# If kernel.perf_event_paranoid present in /etc/sysctl.conf, change value to "2"
#	else, add "kernel.perf_event_paranoid = 2" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^kernel.perf_event_paranoid' "2" '@CCENUM@'