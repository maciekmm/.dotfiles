if [ "$(tty)" = "/dev/tty1" ]; then
	eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
	export SSH_AUTH_SOCK
	_JAVA_AWT_WM_NONREPARENTING=1 MOZ_ENABLE_WAYLAND=1 QT_QPA_PLATFORM=wayland XDG_SESSION_TYPE=wayland exec dbus-run-session sway
fi
