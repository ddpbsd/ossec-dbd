
postgresql:
	/bin/sh ./util/pg.sh
	make -f Makefile.build

mysql:
	/bin/sh ./util/mysql.sh
	make -f Makefile.build

clean:
	rm -f shared/*.o ./*.o config/*.o os_regex/*.o os_xml/*.o Makefile.inc Makefile.inc.backup

