docker build --pull -t xkonti/ssl-proxy:0.2.7 .
docker build --pull -t xkonti/ssl-proxy:0.2 .
docker build --pull -t xkonti/ssl-proxy:0 .
docker build --pull -t xkonti/ssl-proxy:latest .
docker push xkonti/ssl-proxy:0.2.7
docker push xkonti/ssl-proxy:0.2
docker push xkonti/ssl-proxy:0
docker push xkonti/ssl-proxy:latest
