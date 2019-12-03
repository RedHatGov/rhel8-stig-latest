# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove abrt-plugin-rhtsupport
#	   from the system, and may remove any packages
#	   that depend on abrt-plugin-rhtsupport. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "abrt-plugin-rhtsupport" ; then
    yum remove -y "abrt-plugin-rhtsupport"
fi