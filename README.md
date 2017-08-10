## Generate SSL certificates

```
docker run -it \
    -v "$(pwd)/data/certbot/letsencrypt:/etc/letsencrypt" \
    -v "$(pwd)/data/certbot/www:/var/www" \
    certbot/certbot certonly --webroot -w /var/www/ \
    -d philipproplesch.ca \
    -d www.philipproplesch.ca \
    --email philip@d3v.biz --agree-tos --preferred-challenges http
```

## Renew SSL certificates

```
0 0 0/12 1/1 * ? * ./renew.sh
```
