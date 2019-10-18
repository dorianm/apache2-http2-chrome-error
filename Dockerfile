FROM httpd:latest

# Copy configuration, SSL certificate and sources
COPY conf/httpd.conf $HTTPD_PREFIX/conf/
COPY ssl/* $HTTPD_PREFIX/conf/
COPY src $HTTPD_PREFIX/htdocs

EXPOSE 443