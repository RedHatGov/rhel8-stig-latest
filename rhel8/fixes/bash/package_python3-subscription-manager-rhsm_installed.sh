# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low

if ! rpm -q --quiet "python3-subscription-manager-rhsm" ; then
    yum install -y "python3-subscription-manager-rhsm"
fi