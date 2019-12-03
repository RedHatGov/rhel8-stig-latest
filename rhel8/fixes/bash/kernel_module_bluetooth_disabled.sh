# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
if LC_ALL=C grep -q -m 1 "^install bluetooth" /etc/modprobe.d/bluetooth.conf ; then
	sed -i 's/^install bluetooth.*/install bluetooth /bin/true/g' /etc/modprobe.d/bluetooth.conf
else
	echo -e "\n# Disable per security requirements" >> /etc/modprobe.d/bluetooth.conf
	echo "install bluetooth /bin/true" >> /etc/modprobe.d/bluetooth.conf
fi