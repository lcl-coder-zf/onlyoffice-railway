#!/bin/bash
# Remove Ubuntu default nginx site before ONLYOFFICE startup calls service nginx start.
# Must run at container start (not build time) because startup scripts recreate it.
rm -f /etc/nginx/sites-enabled/default
exec /app/ds/run-document-server.sh "$@"
