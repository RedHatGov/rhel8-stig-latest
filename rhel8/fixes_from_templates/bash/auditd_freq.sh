# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low
if [ -e "/etc/audit/auditd.conf" ] ; then
    LC_ALL=C sed -i "/^\s*freq\s*=\s*/Id" "/etc/audit/auditd.conf"
else
    touch "/etc/audit/auditd.conf"
fi
cp "/etc/audit/auditd.conf" "/etc/audit/auditd.conf.bak"
# Insert at the end of the file
printf '%s\n' "freq = 50" >> "/etc/audit/auditd.conf"
# Clean up after ourselves.
rm "/etc/audit/auditd.conf.bak"