FROM nginx:alpine

# Config enxuta (gzip + headers de segurança)
COPY default.conf /etc/nginx/conf.d/default.conf

# A landing (HTML) + o vídeo de demonstração
COPY index.html /usr/share/nginx/html/index.html
COPY demo.mp4 /usr/share/nginx/html/demo.mp4

EXPOSE 80
