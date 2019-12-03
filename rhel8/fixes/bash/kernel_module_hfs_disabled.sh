# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
if LC_ALL=C grep -q -m 1 "^install hfs" /etc/modprobe.d/hfs.conf ; then
	sed -i 's/^install hfs.*/install hfs /bin/true/g' /etc/modprobe.d/hfs.conf
else
	echo -e "\n# Disable per security requirements" >> /etc/modprobe.d/hfs.conf
	echo "install hfs /bin/true" >> /etc/modprobe.d/hfs.conf
fi