#!/bin/sh

echo "<img>/usr/share/icons/Papirus-Dark/32x32/devices/media-memory.svg</img>"

echo "<txt>:" $(free -h | awk '/^Mem:/ {print $3 "/" $2}')"</txt>"
