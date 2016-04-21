#!/bin/bash
apt-get update
zenity --info --title '$HOME_NET' --text '192.168.31.0/24' &
apt-get install -y snort

/etc/init.d/snort stop

# Copiar configuraciones de
# /etc/snort/snort.conf
# /etc/default/snort

snort -i eth1.31 -u snort -g snort -l /var/log/snort -A full -c /etc/snort/snort.conf
# -D daemon


# Comprobar configuración correcta
# snort -T -c /etc/snort/snort.conf


#Mostrar logs dinámicamente:
gnome-terminal -t "LOG alert" -e "tail -f /var/log/snort/alert" &
gnome-terminal -t "LOG portscans" -e "tail -f /var/log/snort/portscans.log" &
#TODO: añadir resto
