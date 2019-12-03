# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
if LC_ALL=C grep -q -m 1 "^install atm" /etc/modprobe.d/atm.conf ; then
	sed -i 's/^install atm.*/install atm /bin/true/g' /etc/modprobe.d/atm.conf
else
	echo -e "\n# Disable per security requirements" >> /etc/modprobe.d/atm.conf
	echo "install atm /bin/true" >> /etc/modprobe.d/atm.conf
fi