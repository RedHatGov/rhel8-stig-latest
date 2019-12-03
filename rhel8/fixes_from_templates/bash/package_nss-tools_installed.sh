# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low

if ! rpm -q --quiet "nss-tools" ; then
    yum install -y "nss-tools"
fi