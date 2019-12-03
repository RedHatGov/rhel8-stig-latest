# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
if LC_ALL=C grep -q -m 1 "^install can" /etc/modprobe.d/can.conf ; then
	sed -i 's/^install can.*/install can /bin/true/g' /etc/modprobe.d/can.conf
else
	echo -e "\n# Disable per security requirements" >> /etc/modprobe.d/can.conf
	echo "install can /bin/true" >> /etc/modprobe.d/can.conf
fi