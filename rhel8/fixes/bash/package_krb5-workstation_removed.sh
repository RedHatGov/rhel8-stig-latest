# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove krb5-workstation
#	   from the system, and may remove any packages
#	   that depend on krb5-workstation. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "krb5-workstation" ; then
    yum remove -y "krb5-workstation"
fi