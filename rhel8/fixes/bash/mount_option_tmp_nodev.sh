# platform = multi_platform_all
# reboot = false

. /usr/share/scap-security-guide/remediation_functions

include_mount_options_functions

function perform_remediation {
	# test "$mount_has_to_exist" = 'yes'
	if test "yes" = 'yes'; then
		assert_mount_point_in_fstab /tmp || { echo "Not remediating, because there is no record of /tmp in /etc/fstab" >&2; return 1; }
	fi

	ensure_mount_option_in_fstab "/tmp" "nodev" "" ""

	ensure_partition_is_mounted "/tmp"
}

perform_remediation