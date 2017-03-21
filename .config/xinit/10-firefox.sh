#!/bin/sh

profile=y9alfgag.default

sed -i "s/\"layout.css.devPixelsPerPx\", \".*\"/\"layout.css.devPixelsPerPx\", \"$SCALING_FACTOR\"/" $HOME/.mozilla/firefox/$profile/prefs.js
