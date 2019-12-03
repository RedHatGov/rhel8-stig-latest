# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove gssproxy
#	   from the system, and may remove any packages
#	   that depend on gssproxy. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "gssproxy" ; then
    yum remove -y "gssproxy"
fi