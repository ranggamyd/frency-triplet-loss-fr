FROM python:3.9

WORKDIR /app

COPY requirements.txt .

RUN apt-get update && apt-get install -y libgl1-mesa-glx

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8080

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]