#!/bin/zsh

STATUS_FILE="/home/ullubiy/.config/vpn/status"

if [ ! -f "$STATUS_FILE" ]; then
    echo "OFF" > "$STATUS_FILE"
fi

CURRENT_STATUS=$(cat "$STATUS_FILE")

if [ "$CURRENT_STATUS" = "OFF" ]; then
    awg-quick up awg0
    echo "ON" > "$STATUS_FILE"
    echo "🟢 ON"
else
    awg-quick down awg0
    echo "OFF" > "$STATUS_FILE"
    echo "🔴 OFF"
fi
