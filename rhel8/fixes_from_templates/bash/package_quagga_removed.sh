# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove quagga
#	   from the system, and may remove any packages
#	   that depend on quagga. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "quagga" ; then
    yum remove -y "quagga"
fi