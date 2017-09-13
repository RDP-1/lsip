#!/bin/bash
ping -i 0.2 -c 1 google.com > /dev/null 2>&1

if (($?==0))
 then
  echo -n "External IP: "
  dig +short myip.opendns.com @resolver1.opendns.com
  echo -n "Internal IP: "
  hostname -I
else
 echo "No network connection..."
fi
