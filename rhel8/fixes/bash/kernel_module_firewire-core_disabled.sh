# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
if LC_ALL=C grep -q -m 1 "^install firewire-core" /etc/modprobe.d/firewire-core.conf ; then
	sed -i 's/^install firewire-core.*/install firewire-core /bin/true/g' /etc/modprobe.d/firewire-core.conf
else
	echo -e "\n# Disable per security requirements" >> /etc/modprobe.d/firewire-core.conf
	echo "install firewire-core /bin/true" >> /etc/modprobe.d/firewire-core.conf
fi