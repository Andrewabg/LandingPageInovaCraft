FROM nginx:alpine

# Config enxuta (gzip + headers de segurança)
COPY default.conf /etc/nginx/conf.d/default.conf

# A landing é um único arquivo autossuficiente
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
