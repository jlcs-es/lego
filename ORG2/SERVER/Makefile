
all: network nmap metasploit nessus test

network:
	sh network

nmap:
	cd NMAP; \
	sh install.sh


metasploit:
	cd METASPLOIT; \
	sh install.sh

nessus:
	cd NESSUS; \
	sh install.sh

ssh:
	cp sshd_config /etc/ssh/sshd_config
	service ssh restart

test:
	sh test

.PHONY: all network test nmap metasploit nessus
