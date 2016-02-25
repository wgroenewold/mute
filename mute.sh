#!/bin/bash

while read -r line < /dev/tty.Twouter-SPP; do
	osascript -e "set volume with output muted"
done