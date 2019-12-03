# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
if LC_ALL=C grep -q -m 1 "^install rds" /etc/modprobe.d/rds.conf ; then
	sed -i 's/^install rds.*/install rds /bin/true/g' /etc/modprobe.d/rds.conf
else
	echo -e "\n# Disable per security requirements" >> /etc/modprobe.d/rds.conf
	echo "install rds /bin/true" >> /etc/modprobe.d/rds.conf
fi