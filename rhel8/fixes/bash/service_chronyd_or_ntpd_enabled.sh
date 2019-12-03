# platform = Red Hat Enterprise Linux 7,Red Hat Enterprise Linux 8,multi_platform_fedora,multi_platform_ol

if rpm -q --quiet chrony ; then
    if ! /usr/sbin/pidof ntpd ; then
        /usr/bin/systemctl enable "chronyd"
        /usr/bin/systemctl start "chronyd"
        # The service may not be running because it has been started and failed,
        # so let's reset the state so OVAL checks pass.
        # Service should be 'inactive', not 'failed' after reboot though.
        /usr/bin/systemctl reset-failed "chronyd"
    fi
elif rpm -q --quiet ntp ; then
    /usr/bin/systemctl enable "ntpd"
    /usr/bin/systemctl start "ntpd"
    # The service may not be running because it has been started and failed,
    # so let's reset the state so OVAL checks pass.
    # Service should be 'inactive', not 'failed' after reboot though.
    /usr/bin/systemctl reset-failed "ntpd"
else
    if ! rpm -q --quiet "chrony" ; then
        yum install -y "chrony"
    fi
    /usr/bin/systemctl enable "chronyd"
    /usr/bin/systemctl start "chronyd"
    # The service may not be running because it has been started and failed,
    # so let's reset the state so OVAL checks pass.
    # Service should be 'inactive', not 'failed' after reboot though.
    /usr/bin/systemctl reset-failed "chronyd"
fi