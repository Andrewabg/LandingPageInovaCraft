# Espelho oficial da AWS (mesma imagem do Docker Hub, sem o limite de download por IP que
# derrubou deploys do OiAria em 24/09/2026 e desta landing em 28/09/2026).
FROM public.ecr.aws/docker/library/nginx:alpine

# Config enxuta (gzip + headers de segurança)
COPY default.conf /etc/nginx/conf.d/default.conf

# A landing (HTML) + o vídeo de demonstração
COPY index.html /usr/share/nginx/html/index.html
COPY privacidade.html /usr/share/nginx/html/privacidade.html
COPY demo.mp4 /usr/share/nginx/html/demo.mp4

EXPOSE 80
