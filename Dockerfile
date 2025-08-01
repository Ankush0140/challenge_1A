FROM python:3.9-slim

WORKDIR /app

COPY src/ ./src/
COPY input/ ./input/
COPY output/ ./output/

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "./src/main.py"]
