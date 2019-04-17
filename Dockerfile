# -----
# Dockerfile for a container mirroring and
# providing GitHub repositories.
# -----

FROM alpine:latest
LABEL maintainer = "Frank Mueller <mail@themue.dev>"

RUN apk add --no-cache ca-certificates
RUN apk add --no-cache openssh
RUN apk add --no-cache git
RUN apk add --no-cache nginx
RUN apk add --no-cache nginx-mod-http-echo

RUN mkdir -p /run/nginx
RUN mkdir -p /tideland/repos

COPY default.conf /etc/nginx/conf.d/
COPY index.html /tideland/
COPY start.sh .
COPY pull.sh .

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/bin/sh", "/start.sh"]

# -----
# EOF
# -----

