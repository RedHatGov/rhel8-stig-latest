# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low
if [ -e "/etc/systemd/coredump.conf" ] ; then
    LC_ALL=C sed -i "/^\s*Storage\s*=\s*/Id" "/etc/systemd/coredump.conf"
else
    touch "/etc/systemd/coredump.conf"
fi
cp "/etc/systemd/coredump.conf" "/etc/systemd/coredump.conf.bak"
# Insert at the end of the file
printf '%s\n' "Storage=none" >> "/etc/systemd/coredump.conf"
# Clean up after ourselves.
rm "/etc/systemd/coredump.conf.bak"