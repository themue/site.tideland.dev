# -----
# Dockerfile for a container mirroring and
# providing GitHub repositories.
# -----

FROM alpine:latest
LABEL maintainer = "Frank Mueller <mail@themue.dev>"

RUN apk add --no-cache ca-certificates openssh git nginx nginx-mod-http-echo \
	&& mkdir -p /run/nginx \
	%% mkdir -p /tideland

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

