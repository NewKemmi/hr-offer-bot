FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir aiogram flask
COPY bot.py .
EXPOSE 10000
CMD ["python", "bot.py"]