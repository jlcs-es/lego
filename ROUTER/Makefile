
all: network snort test

network:
	sh network

test:
	sh test

snort:
	cd SNORT; \
	sh install.sh

ssh:
	cp sshd_config /etc/ssh/sshd_config
	service ssh restart


.PHONY: all network snort ssh
