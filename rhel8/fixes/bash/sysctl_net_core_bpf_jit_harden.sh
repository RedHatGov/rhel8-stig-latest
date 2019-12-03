# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
. /usr/share/scap-security-guide/remediation_functions

#
# Set runtime for net.core.bpf_jit_harden
#
/sbin/sysctl -q -n -w net.core.bpf_jit_harden="2"

#
# If net.core.bpf_jit_harden present in /etc/sysctl.conf, change value to "2"
#	else, add "net.core.bpf_jit_harden = 2" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^net.core.bpf_jit_harden' "2" '@CCENUM@'