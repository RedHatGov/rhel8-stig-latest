# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove rsh
#	   from the system, and may remove any packages
#	   that depend on rsh. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "rsh" ; then
    yum remove -y "rsh"
fi