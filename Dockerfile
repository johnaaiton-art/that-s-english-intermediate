FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "bot.py"]
# FORCE REBUILD - DO NOT REMOVE (2025-04-05)
ENV FORCE_REBUILD=1
