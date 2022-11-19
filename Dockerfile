FROM python:3.8.10

WORKDIR ./app

COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY ./ /app

CMD python3 server.py & python3 -m http.server 9000
