#!/bin/sh

echo "$MOTD" > '/motd.txt'

/syncplay/syncplayServer.py --motd '/motd.txt' "$@"
