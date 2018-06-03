FROM nginx:alpine
RUN mkdir -p /usr/share/nginx/html/pkg
RUN echo "<meta name=\"go-import\" content=\"tideland.one git https://github.com/tideland/goversion\">" >> /usr/share/nginx/html/pkg/goversion
RUN echo "<meta name=\"go-import\" content=\"tideland.one git https://github.com/tideland/goaudit\">"   >> /usr/share/nginx/html/pkg/goaudit

