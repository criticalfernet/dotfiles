#!/bin/bash
CONFIG="$HOME/.config/rofi/network-config.rasi"
CONFIG2="$HOME/.config/rofi/network-output.rasi"
WIFI_LIST="$(nmcli device wifi list | grep -v '^\*' | awk '{print $2}' | tail -n +2)"
SELECTED=$(echo "$WIFI_LIST" | rofi -dmenu -config $CONFIG)

if [ -z "${SELECTED}" ]; then
  exit 1
fi

echo "$(nmcli con up $SELECTED 2>&1)" | rofi -dmenu -config $CONFIG2

exit 0
