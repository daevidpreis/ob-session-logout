
install: ob-session-logout.py archlinux-logo-dark.png
	test -d /usr/local/bin/ || mkdir -p /usr/local/bin/
	cp ob-session-logout.py /usr/local/bin/ob-session-logout
	chmod a+x /usr/local/bin/ob-session-logout
	test -d /usr/share/ob-session-logout/ || mkdir -p /usr/share/ob-session-logout/
	cp archlinux-logo-dark.png /usr/share/ob-session-logout/archlinux-logo-dark.png

uninstall:
	test -e /usr/local/bin/ob-session-logout && rm /usr/local/bin/ob-session-logout || exit 0
	test -e /usr/share/ob-session-logout/archlinux-logo-dark.png && rm /usr/share/ob-session-logout/archlinux-logo-dark.png || exit 0
	test -d /usr/share/ob-session-logout/ && rmdir /usr/share/ob-session-logout/ || exit 0

purge: uninstall
	test -d /etc/ob-session-logout/ && rm -rf /etc/ob-session-logout/ || exit 0
