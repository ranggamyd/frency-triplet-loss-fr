FROM python:3.9

CMD ["apt-get", "update", "&&", "apt-get", "install", "libgl1"]

WORKDIR /app

COPY requirements.txt .

RUN pip install -r "./requirements.txt"

COPY . .

EXPOSE 8080

CMD ["uvicorn", "main:app", "--reload", "--port", "8080"]
