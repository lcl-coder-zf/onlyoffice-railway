FROM onlyoffice/documentserver:7.5.1.1

# ONLYOFFICE startup scripts recreate /etc/nginx/sites-enabled/default at runtime,
# so deleting the symlink during build does not persist.
# Instead, remove the include directive from nginx.conf so sites-enabled is
# never loaded regardless of what startup scripts do.
RUN sed -i '/include \/etc\/nginx\/sites-enabled\//d' /etc/nginx/nginx.conf

EXPOSE 80
