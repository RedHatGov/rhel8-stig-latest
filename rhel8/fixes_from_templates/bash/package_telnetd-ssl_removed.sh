# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove telnetd-ssl
#	   from the system, and may remove any packages
#	   that depend on telnetd-ssl. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "telnetd-ssl" ; then
    yum remove -y "telnetd-ssl"
fi