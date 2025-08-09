FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
COPY logo.png /usr/share/nginx/html/  # если есть
EXPOSE 80
