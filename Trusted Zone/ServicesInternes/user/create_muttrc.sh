#!/bin/bash

echo "set from=\"$1@l2-2.ephec-ti.be\"
set ssl_starttls=no
set ssl_force_tls=no
set smtp_url = \"smtp://mail.l2-2.ephec-ti.be:25\"

# Imap settings
set spoolfile=\"imap://$1@l2-2.ephec-ti.be/\"
set imap_user = \"$1@l2-2.ephec-ti.be\"
set imap_pass = \"\"
set folder = \"imap://$1@l2-2.ephec-ti.be/\""
