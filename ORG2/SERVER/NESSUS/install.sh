#!/bin/bash

dpkg -i Nessus-6.6.0-ubuntu1110_amd64.deb

/etc/init.d/nessusd start

firefox server.org32:8834

zenity --info --text '1. Aceptar certificado autogenerado.\n2. Aceptar Get Started\n3. Registar como admin:admin\n4. Código plugin:\n A6DD-7315-890C-078B-9144'
