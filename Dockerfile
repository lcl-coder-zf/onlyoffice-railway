FROM onlyoffice/documentserver:7.5.1.1

# Remove the default nginx site that conflicts with ONLYOFFICE's config
# (causes "duplicate default server for [::]:80" error on startup)
RUN rm -f /etc/nginx/sites-enabled/default
