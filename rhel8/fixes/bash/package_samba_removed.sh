# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove samba
#	   from the system, and may remove any packages
#	   that depend on samba. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "samba" ; then
    yum remove -y "samba"
fi