# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low

if ! rpm -q --quiet "openscap-scanner" ; then
    yum install -y "openscap-scanner"
fi