#!/bin/bash
# Remove Ubuntu default nginx site before ONLYOFFICE startup calls service nginx start
rm -f /etc/nginx/sites-enabled/default
exec /usr/bin/documentserver-start.sh "$@"
