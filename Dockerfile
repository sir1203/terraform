FROM python:3.8-slim

COPY . .

RUN python hello.py

CMD ["python", "hello.py"]
