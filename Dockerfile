FROM onlyoffice/documentserver:7.5.1.1

# The ONLYOFFICE startup script calls `service nginx start` at runtime.
# Ubuntu's default nginx site (/etc/nginx/sites-enabled/default) declares
# default_server on [::]:80, conflicting with ONLYOFFICE's own nginx config.
# Build-time fixes do not persist because startup scripts recreate the symlink.
# Fix: wrap the entrypoint to remove the conflicting site BEFORE nginx starts.
COPY docker-entrypoint-wrapper.sh /docker-entrypoint-wrapper.sh
RUN chmod +x /docker-entrypoint-wrapper.sh

ENTRYPOINT ["/docker-entrypoint-wrapper.sh"]
EXPOSE 80
