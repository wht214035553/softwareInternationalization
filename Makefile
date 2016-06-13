src=test.c
exe=test
filename=test
CC = gcc
zh = zh_CN/LC_MESSAGES
LOCALE_DIR = /usr/share/locale
all:
	$(CC) $(src) -o $(exe)

po:
	xgettext --keyword=_ $(src) -o $(filename).pot
	msginit -l zh_CN.UTF-8 -i $(filename).pot -o $(filename).po
mo:
	msgfmt $(filename).po -o $(filename).mo
dir:
	mkdir -p zh_CN/LC_MESSAGES
cp:
	cp test.mo $(zh)
	cp test.mo $(LOCALE_DIR)/$(zh)
clean:
	-rm test
