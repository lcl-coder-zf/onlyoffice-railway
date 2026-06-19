FROM onlyoffice/documentserver:7.5.1.1

# Fix "duplicate default server for [::]:80" conflict between the Ubuntu nginx
# default site and ONLYOFFICE's nginx config. Remove the default_server flag
# from the IPv6 listen directive in /etc/nginx/sites-available/default.
RUN sed -i 's/listen \[::\]:80 default_server;/listen [::]:80;/' /etc/nginx/sites-available/default
