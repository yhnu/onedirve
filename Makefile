install:
	mkdir -p $(DESTDIR)/var/log/onedrive
	chown root.users $(DESTDIR)/var/log/onedrive
	chmod 0775 $(DESTDIR)/var/log/onedrive
	install -D onedrive $(DESTDIR)$(PREFIX)/bin/onedrive
service:
	cp onedrive.service /lib/systemd/system/ && systemctl enable onedrive.service && systemctl start onedrive.service

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/onedrive
	rm -f $(DESTDIR)/etc/logrotate.d/onedrive
