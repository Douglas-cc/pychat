FROM python:3.8.10

WORKDIR ./app

COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY ./ /code/app

CMD ["uvicorn", "server:app",  "--host", "0.0.0.0", "--port", "8000"]
# CMD ["python3", "-m" "http.server", "9000"] 