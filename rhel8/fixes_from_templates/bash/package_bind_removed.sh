# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove bind
#	   from the system, and may remove any packages
#	   that depend on bind. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "bind" ; then
    yum remove -y "bind"
fi