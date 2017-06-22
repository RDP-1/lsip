#!/bin/bash
lanstatus=`cat /sys/class/net/eth0/carrier`

if [[ `cat /sys/class/net/wlan0/carrier 2>/dev/null` == 1 ]]
 then
  wlanstatus=1
 else
  wlanstatus=0
fi

if (($wlanstatus==1)) || (($lanstatus==1))
 then
  echo -n "External IP: "
  dig +short myip.opendns.com @resolver1.opendns.com
  echo -n "Internal IP: "
  ifconfig | grep -E -o "inet addr:192.168.[0-9].[0-9]*" | grep -E -o "192.168.$
else
 echo "No network connection..."
fi
