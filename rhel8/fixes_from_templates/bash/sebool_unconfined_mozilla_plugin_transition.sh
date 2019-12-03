# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Include source function library.
. /usr/share/scap-security-guide/remediation_functions


populate var_unconfined_mozilla_plugin_transition

setsebool -P unconfined_mozilla_plugin_transition $var_unconfined_mozilla_plugin_transition
