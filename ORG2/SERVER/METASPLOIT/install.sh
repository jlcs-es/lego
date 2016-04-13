#!/bin/bash

curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall

gnome-terminal -t "METASPLOIT" -e "msfconsole" &
