FROM python:3.13-slim
WORKDIR /app
COPY app/requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY app/app.py app.py
CMD ["python", "app.py"]