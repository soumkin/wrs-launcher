#!/bin/sh

status() {
	set -x
	cat /etc/resolv.conf
	netstat -rn
	set +x
}

case "$1" in
  on)
	route add default gw 192.168.100.1
	echo "nameserver 8.8.8.8" >> /etc/resolv.conf
	echo "nameserver 8.8.4.4" >> /etc/resolv.conf
	status
        ;;
  off)
	sed -i -e '/^nameserver .*/d' /etc/resolv.conf
	route del default gw 192.168.100.1
	status
        ;;
  status)
	status
	;;
  *)
	echo "Usage: $0 {on|off|status}"
        ;;
esac
