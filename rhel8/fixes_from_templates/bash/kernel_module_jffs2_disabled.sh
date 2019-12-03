# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
if LC_ALL=C grep -q -m 1 "^install jffs2" /etc/modprobe.d/jffs2.conf ; then
	sed -i 's/^install jffs2.*/install jffs2 /bin/true/g' /etc/modprobe.d/jffs2.conf
else
	echo -e "\n# Disable per security requirements" >> /etc/modprobe.d/jffs2.conf
	echo "install jffs2 /bin/true" >> /etc/modprobe.d/jffs2.conf
fi