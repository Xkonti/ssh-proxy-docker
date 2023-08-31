FROM alpine:latest
RUN apk add --no-cache curl
RUN curl -LJ "https://getbin.io/suyashkumar/ssl-proxy?os=linux" | tar xvz \
    && mv ssl-proxy-linux-amd64 ssl-proxy \
    && chmod +x ssl-proxy
EXPOSE 80 443
ENV FROM_URL=0.0.0.0:443
ENV TO_URL=
ENV DOMAIN_NAME=

CMD ["sh", "-c", "./ssl-proxy -redirectHTTP -from ${FROM_URL} -to ${TO_URL} -domain=${DOMAIN_NAME}"]