FROM python:3.10-slim

LABEL maintainer "Joao Maia <joao@joaovrmaia.com>"

COPY ./app /app

WORKDIR /app

RUN useradd -r app \
    && chown -R app /app \
    && apt-get update -y \
    && apt-get dist-upgrade -y \
    && pip3 install poetry==1.1.14 \
    && poetry config virtualenvs.create false \
    && poetry install \
    && rm -rf /var/lib/apt/lists/*

ENV VERSION=0.2.0

EXPOSE 5000

USER app

ENTRYPOINT ["gunicorn"]

CMD ["--bind", "0.0.0.0:5000", "whoami:app", "--worker-class=gevent"]
