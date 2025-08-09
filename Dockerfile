# Используем легковесный образ с Nginx
FROM nginx:alpine

# Копируем наш index.html и другие файлы в веб-корень
COPY index.html /usr/share/nginx/html/
COPY logo.png /usr/share/nginx/html/  # если есть
COPY style.css /usr/share/nginx/html/  # если есть
COPY script.js /usr/share/nginx/html/  # если есть

# Открываем порт 80
EXPOSE 80

# Nginx будет работать как веб-сервер
