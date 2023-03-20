#!/bin/bash

LOGFILE="/tmp/ips.csv"

echo "Server,MAC,IP" > ${LOGFILE}


for server in /etc/libvirt/qemu/server*.xml
do
	server_name="${server##*/}" # get chars after last /
	#server_name="${server_name::-4}" # remove last ".xml"
	server_name=$(basename ${server_name} .xml)
	MAC=$(sudo cat ${server} | grep "mac address" | cut -d"'" -f 2)
	IP=$(arp -n | grep ${MAC} | awk '{print $1}')
	echo "${server_name},${MAC},${IP}" >> ${LOGFILE}
done

column -ts, ${LOGFILE}
