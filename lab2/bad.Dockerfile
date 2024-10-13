FROM python:latest

WORKDIR /app

COPY . /app

RUN apt-get update
RUN apt-get install -y curl
RUN curl https://pastebin.com/raw/XtGYKzjC > meta.txt

CMD ["python", "main.py"]

