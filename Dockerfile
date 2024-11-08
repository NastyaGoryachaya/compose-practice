# Используем официальный образ Python
FROM python:3.11-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы
COPY ./app/requirements.txt /app

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

COPY ./app /app

# Запускаем приложение
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
