FROM onlyoffice/documentserver:7.5.1.1

# Remove the Ubuntu default nginx site that conflicts with ONLYOFFICE.
# Two configs claiming default_server for [::]:80 causes nginx to fail on start.
RUN rm -f /etc/nginx/sites-enabled/default

EXPOSE 80
