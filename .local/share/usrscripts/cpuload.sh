#!/bin/sh

echo "<img>/usr/share/icons/Papirus-Dark/32x32/devices/computer.svg</img>"

echo "<txt>:" $(mpstat 1 1 | awk '$12 ~ /[0-9]+/ {print 100 - $12"%" }' | tail -1)"</txt>"
