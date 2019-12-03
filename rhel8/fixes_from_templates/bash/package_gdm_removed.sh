# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove gdm
#	   from the system, and may remove any packages
#	   that depend on gdm. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "gdm" ; then
    yum remove -y "gdm"
fi