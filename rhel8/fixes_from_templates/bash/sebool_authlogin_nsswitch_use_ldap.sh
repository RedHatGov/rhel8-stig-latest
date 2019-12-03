# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Include source function library.
. /usr/share/scap-security-guide/remediation_functions


populate var_authlogin_nsswitch_use_ldap

setsebool -P authlogin_nsswitch_use_ldap $var_authlogin_nsswitch_use_ldap
