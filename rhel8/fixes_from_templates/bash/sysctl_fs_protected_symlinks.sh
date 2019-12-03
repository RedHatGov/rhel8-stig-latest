# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
. /usr/share/scap-security-guide/remediation_functions

#
# Set runtime for fs.protected_symlinks
#
/sbin/sysctl -q -n -w fs.protected_symlinks="1"

#
# If fs.protected_symlinks present in /etc/sysctl.conf, change value to "1"
#	else, add "fs.protected_symlinks = 1" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^fs.protected_symlinks' "1" '@CCENUM@'