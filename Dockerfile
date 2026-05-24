FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY main.py VERSION ./
COPY static ./static
COPY workflows ./workflows

EXPOSE 3000

CMD ["python", "main.py"]
