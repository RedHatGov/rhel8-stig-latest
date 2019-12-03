# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove abrt
#	   from the system, and may remove any packages
#	   that depend on abrt. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "abrt" ; then
    yum remove -y "abrt"
fi