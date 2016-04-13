
all: network test

network:
	sh network

ssh:
	cp sshd_config /etc/ssh/sshd_config
	service ssh restart

test:
	sh test

.PHONY: all network test
