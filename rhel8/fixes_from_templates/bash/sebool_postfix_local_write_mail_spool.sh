# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Include source function library.
. /usr/share/scap-security-guide/remediation_functions


populate var_postfix_local_write_mail_spool

setsebool -P postfix_local_write_mail_spool $var_postfix_local_write_mail_spool
