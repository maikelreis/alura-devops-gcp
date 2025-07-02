FROM python:3.13.4-alpine3.22

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

#Copy files to container
COPY . .

EXPOSE 8000

ENTRYPOINT [ "uvicorn", "app:app", "--reload"]

CMD ["--host","0.0.0.0","--port","8000"]




