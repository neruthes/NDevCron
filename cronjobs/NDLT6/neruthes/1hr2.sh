IPADDR="$(ip addr | grep 192.168.31.26)"
if [[ "${IPADDR:0:13}" == "192.168.31.26" ]]; then
    bash /Users/Neruthes/Developer/NDevShellRC/bin/NDevSync-wanddns > /dev/null 2>&1
fi
