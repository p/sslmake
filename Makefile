
PREFIX ?= /usr/local
EPREFIX ?= $(PREFIX)/bin
D ?= /

all:
	@echo Choose: If you prefer openssl, use install-openssl. If you prefer gnutls, use install-gnutls.
	@echo If you use install, openssl will be used.

install: install-openssl

install-openssl:
	install --owner root --group root --mode 0755 sslmake-openssl $(EPREFIX)/sslmake

install-gnutls:
	install --owner root --group root --mode 0755 sslmake-gnutls $(EPREFIX)/sslmake
