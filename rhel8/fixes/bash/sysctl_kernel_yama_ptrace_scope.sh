# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
. /usr/share/scap-security-guide/remediation_functions

#
# Set runtime for kernel.yama.ptrace_scope
#
/sbin/sysctl -q -n -w kernel.yama.ptrace_scope="1"

#
# If kernel.yama.ptrace_scope present in /etc/sysctl.conf, change value to "1"
#	else, add "kernel.yama.ptrace_scope = 1" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^kernel.yama.ptrace_scope' "1" '@CCENUM@'