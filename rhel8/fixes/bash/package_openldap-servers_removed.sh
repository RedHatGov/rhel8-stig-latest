# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove openldap-servers
#	   from the system, and may remove any packages
#	   that depend on openldap-servers. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "openldap-servers" ; then
    yum remove -y "openldap-servers"
fi