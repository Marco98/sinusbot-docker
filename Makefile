PKGNAME=git.steiger.online/marco.steiger/sinusbot
PKGVER=1.0.1

.PHONY: all
all: discord teamspeak

.PHONY: discord
discord:
	sudo podman build -t $(PKGNAME):$(PKGVER)-discord ./discord

.PHONY: teamspeak
teamspeak:
	sudo podman build -t $(PKGNAME):$(PKGVER) .

.PHONY: push
push:
	sudo podman push $(PKGNAME):$(PKGVER)