# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low
. /usr/share/scap-security-guide/remediation_functions
populate var_password_pam_difok



replace_or_append '/etc/security/pwquality.conf' '^difok' $var_password_pam_difok '@CCENUM@' '%s = %s'

