# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove dovecot
#	   from the system, and may remove any packages
#	   that depend on dovecot. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "dovecot" ; then
    yum remove -y "dovecot"
fi