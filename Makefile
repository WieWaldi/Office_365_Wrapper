# Office 365 Wrapper
include config.mk

.PHONY: all options install uninstall

all: options install

options:
	@echo "This build options:"
	@echo "PREFIX     = ${PREFIX}"
	@echo "MANPREFIX  = ${MANPREFIX}"

install:
	@echo "Installing executable file to ${PREFIX}/bin"
	@cp -f word ${PREFIX}/bin
	@chmod 755 ${PREFIX}/bin/word
	@cp -f excel ${PREFIX}/bin
	@chmod 755 ${PREFIX}/bin/excel
	@cp -f outlook ${PREFIX}/bin
	@chmod 755 ${PREFIX}/bin/outlook
	@cp -f teamspwa ${PREFIX}/bin
	@chmod 755 ${PREFIX}/bin/teamspwa

uninstall:
	@echo "Removing executable file from ${PREFIX}/bin"
	@rm -f ${PREFIX}/bin/word
	@rm -f ${PREFIX}/bin/excel
	@rm -f ${PREFIX}/bin/outlook
	@rm -f ${PREFIX}/bin/teamspwa
