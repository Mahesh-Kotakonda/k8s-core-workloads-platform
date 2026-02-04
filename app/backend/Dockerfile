FROM python:3.11-slim

WORKDIR /app

COPY src/app.py .

RUN pip install flask

EXPOSE 3000

CMD ["python", "app.py"]
