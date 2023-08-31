# ssl-proxy via Docker

[Simple SSL proxy written by @suyashkumar](https://github.com/suyashkumar/ssl-proxy) conveniently packaged into a Docker container.

## Usage

Docker image: [xkonti/ssl-proxy](https://hub.docker.com/r/xkonti/ssl-proxy)

To run the proxy pointing to a local server on port 8080, with the domain name `example.com`:

```bash
docker run -e TO_URL=http://127.0.0.1:8080 -e DOMAIN_NAME=example.com -p 80:80 -p 443:443 --name ssl-proxy xkonti/ssl-proxy:latest
```

Docker compose example:

```
version: '3'

services:
  ssl-proxy:
    image: xkonti/ssl-proxy:latest
    container_name: ssl-proxy
    restart: unless-stopped
    environment:
      - TO_URL=http://127.0.0.1:3000
      - DOMAIN_NAME=tetris.xkonti.tech
    ports:
      - 80:80
      - 443:443
```

## Environment variables

- `FROM_URL` - The URL to proxy from. Defaults to `0.0.0.0:443`.
- `TO_URL` - The URL to proxy to. Required.
- `DOMAIN_NAME` - The domain name to use for the SSL certificate. Required.
