# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove mcstrans
#	   from the system, and may remove any packages
#	   that depend on mcstrans. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "mcstrans" ; then
    yum remove -y "mcstrans"
fi