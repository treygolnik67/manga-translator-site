# Dockerfile — для Flet-приложения
FROM python:3.11-slim

# Установка системных зависимостей
RUN apt-get update && apt-get install -y \
    poppler-utils \
    && rm -rf /var/lib/apt/lists/*

# Установка Python-пакетов
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем приложение
COPY app.py .

# Порт (Flet по умолчанию использует 8501)
EXPOSE 8501

# Запуск Flet
CMD ["python", "app.py"]
