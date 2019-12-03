# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove talk
#	   from the system, and may remove any packages
#	   that depend on talk. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "talk" ; then
    yum remove -y "talk"
fi