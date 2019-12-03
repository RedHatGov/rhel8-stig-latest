# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = false
# strategy = enable
# complexity = low
# disruption = low
# Include source function library.
. /usr/share/scap-security-guide/remediation_functions


populate var_kdumpgui_run_bootloader

setsebool -P kdumpgui_run_bootloader $var_kdumpgui_run_bootloader
