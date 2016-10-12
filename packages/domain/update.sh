#!/bin/sh
#FreeDNS updater script

UPDATEURL="http://freedns.afraid.org/dynamic/update.php?NkxrWE1KUzZFM0lTM1B6SUppZkZ3S2NVOjE2MDE5NTA2"
DOMAIN="namoworld.co"

registered=$(nslookup $DOMAIN|tail -n2|grep A|sed s/[^0-9.]//g)

  current=$(wget -q -O - http://checkip.dyndns.org|sed s/[^0-9.]//g)
       [ "$current" != "$registered" ] && {                           
          wget -q -O /dev/null $UPDATEURL 
          echo "DNS updated on:"; date
  }
