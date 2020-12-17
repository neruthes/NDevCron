if [[ -e /mnt/NEPd2/Data/.mounted ]]; then
    /root/DEV/NDevShellRC/bin/saturation-git-keeper pull-repos
fi

systemctl restart avahi-daemon
systemctl restart tinc@NTincNet
systemctl restart netatalk
