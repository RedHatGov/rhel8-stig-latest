# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove talk-server
#	   from the system, and may remove any packages
#	   that depend on talk-server. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "talk-server" ; then
    yum remove -y "talk-server"
fi