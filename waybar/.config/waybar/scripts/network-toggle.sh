#!/bin/bash

INFO=$(nmcli device | grep wifi | awk '{print $1 "\n" $3}')
ADAPTER=$(echo "$INFO" | head -1)
STATUS=$(echo "$INFO" | tail -1)

if [ "$STATUS" == "connected" ]; then
  nmcli device disconnect $ADAPTER
  exit 0
elif [ "$STATUS" == "disconnected" ]; then
  nmcli device connect $ADAPTER
  exit 0
else
  exit 0
fi

exit 1
