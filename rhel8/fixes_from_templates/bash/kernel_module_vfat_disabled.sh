# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
if LC_ALL=C grep -q -m 1 "^install vfat" /etc/modprobe.d/vfat.conf ; then
	sed -i 's/^install vfat.*/install vfat /bin/true/g' /etc/modprobe.d/vfat.conf
else
	echo -e "\n# Disable per security requirements" >> /etc/modprobe.d/vfat.conf
	echo "install vfat /bin/true" >> /etc/modprobe.d/vfat.conf
fi