# platform = multi_platform_wrlinux,multi_platform_all
. /usr/share/scap-security-guide/remediation_functions


AUDISP_REMOTE_CONFIG="/etc/audit/audisp-remote.conf"
option="^transport"
value="KRB5"


replace_or_append $AUDISP_REMOTE_CONFIG "$option" "$value" "@CCENUM@"