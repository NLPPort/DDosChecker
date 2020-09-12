#!/bin/sh
echo "attack list"
netstat -ntu | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n
echo "blacklist"
cat /usr/local/ddos/ban.ip.list
echo "ignore ip list"
cat /usr/local/ddos/ignore.ip.list
