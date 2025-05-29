FROM python:3.13-slim
WORKDIR /app
COPY src/requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY src/main.py app.py
CMD ["python", "app.py"]