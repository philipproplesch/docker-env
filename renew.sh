docker run -it \
    -v "$(pwd)/data/certbot/letsencrypt:/etc/letsencrypt" \
    -v "$(pwd)/data/certbot/www:/var/www" \
    certbot/certbot \
    renew --force-renewal

# Restart nginx container to use new certificates
docker restart reverse_proxy