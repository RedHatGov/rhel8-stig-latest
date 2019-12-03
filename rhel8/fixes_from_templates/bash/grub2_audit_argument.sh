# platform = Red Hat Enterprise Linux 7,Red Hat Enterprise Linux 8,multi_platform_fedora,multi_platform_ol,multi_platform_rhv


#in later versions of rhel grub2-editenv is used
grub2-editenv - set "$(grub2-editenv - list | grep kernelopts) audit=1"
