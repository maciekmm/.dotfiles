#!/bin/bash

if [[ -z $(xdotool search -class $1) ]]; then
	i3-msg "exec --no-startup-id $2 -name $3"
fi
while [[ -z $(xdotool search -class $1) ]]; do
	sleep 0.05
done
i3-msg "[class=\"(?i)$1\" instance=\"$3\"] scratchpad show"
