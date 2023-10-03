#!/bin/bash

LOGFILE="./ips.csv"

vmcounter=0
exec 3<"mac.txt"
while IFS= read -r line <&3; do
    MAC=$(echo "$line" | awk -F'=' -v RS=',' '{print $2}')
    MAC=$(echo $MAC | awk '{print $1}')
    IP=$(arp -n | grep -i ${MAC} | awk '{print $1}')

    echo "password: ieee, vm${vmcounter}: ssh user@${IP}" | tee -a ${LOGFILE}
    (( vmcounter += 1 ))
done

#column -ts, ${LOGFILE}
