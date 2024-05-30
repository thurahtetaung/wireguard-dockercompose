#!/bin/bash

# exec into the nginx container
docker exec -it nginx /bin/sh

# copy the nginx.conf file to the container
cp /etc/nginx/servers/wg-docker.conf /etc/nginx/conf.d/.
certbot --nginx --non-interactive --agree-tos -m webmaster@google.com -d wg-easy.myhomelab.com
nginx -s reload
exit
