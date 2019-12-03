# platform = Red Hat Enterprise Linux 7,Red Hat Enterprise Linux 8,multi_platform_fedora,multi_platform_ol
. /usr/share/scap-security-guide/remediation_functions
populate var_multiple_time_servers

config_file="/etc/ntp.conf"
/usr/sbin/pidof ntpd || config_file="/etc/chrony.conf"

if ! [ "$(grep -c '^server' "$config_file")" -gt 1 ] ; then
  if ! grep -q '#[[:space:]]*server' "$config_file" ; then
    for server in $(echo "$var_multiple_time_servers" | tr ',' '\n') ; do
      printf '\nserver %s iburst' "$server" >> "$config_file"
    done
  else
    sed -i 's/#[ \t]*server/server/g' "$config_file"
  fi
fi