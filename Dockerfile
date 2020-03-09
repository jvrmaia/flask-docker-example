FROM python:3.8.2

LABEL maintainer "Joao Maia <joao@joaovrmaia.com>"

COPY ./app /app

WORKDIR /app

RUN useradd -r app \
    && chown -R app /app \
    && apt-get update -y \
    && apt-get dist-upgrade -y \
    && pip3 install poetry==1.0.5 \
    && poetry config virtualenvs.create false \
    && poetry install \
    && rm -rf /var/lib/apt/lists/*

ENV VERSION=0.1.1

EXPOSE 5000

USER app

ENTRYPOINT ["gunicorn"]

CMD ["--bind", "0.0.0.0:5000", "whoami:APP"]
