FROM nginx:alpine

ADD content /usr/share/nginx/html/

expose 80
expose 443
