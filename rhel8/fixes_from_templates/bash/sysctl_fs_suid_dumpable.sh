# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
. /usr/share/scap-security-guide/remediation_functions

#
# Set runtime for fs.suid_dumpable
#
/sbin/sysctl -q -n -w fs.suid_dumpable="0"

#
# If fs.suid_dumpable present in /etc/sysctl.conf, change value to "0"
#	else, add "fs.suid_dumpable = 0" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^fs.suid_dumpable' "0" '@CCENUM@'