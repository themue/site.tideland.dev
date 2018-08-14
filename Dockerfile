FROM nginx:alpine
RUN mkdir -p /usr/share/nginx/html/pkg
RUN echo "<meta name=\"go-import\" content=\"tideland.one git https://github.com/tideland/goaudit\">"   >> /usr/share/nginx/html/pkg/goaudit
RUN echo "<meta name=\"go-import\" content=\"tideland.one git https://github.com/tideland/gocells\">"   >> /usr/share/nginx/html/pkg/gocells
RUN echo "<meta name=\"go-import\" content=\"tideland.one git https://github.com/tideland/gocouch\">"   >> /usr/share/nginx/html/pkg/gocouch
RUN echo "<meta name=\"go-import\" content=\"tideland.one git https://github.com/tideland/godsa\">"   >> /usr/share/nginx/html/pkg/godsa
RUN echo "<meta name=\"go-import\" content=\"tideland.one git https://github.com/tideland/gofeed\">"   >> /usr/share/nginx/html/pkg/gofeed
RUN echo "<meta name=\"go-import\" content=\"tideland.one git https://github.com/tideland/gojwt\">"   >> /usr/share/nginx/html/pkg/gojwt
RUN echo "<meta name=\"go-import\" content=\"tideland.one git https://github.com/tideland/goredis\">"   >> /usr/share/nginx/html/pkg/goredis
RUN echo "<meta name=\"go-import\" content=\"tideland.one git https://github.com/tideland/gorest\">"   >> /usr/share/nginx/html/pkg/gorest
RUN echo "<meta name=\"go-import\" content=\"tideland.one git https://github.com/tideland/gotext\">"   >> /usr/share/nginx/html/pkg/gotext
RUN echo "<meta name=\"go-import\" content=\"tideland.one git https://github.com/tideland/gotogether\">"   >> /usr/share/nginx/html/pkg/gotogether
RUN echo "<meta name=\"go-import\" content=\"tideland.one git https://github.com/tideland/gotrace\">"   >> /usr/share/nginx/html/pkg/gotrace
RUN echo "<meta name=\"go-import\" content=\"tideland.one git https://github.com/tideland/goversion\">" >> /usr/share/nginx/html/pkg/goversion

