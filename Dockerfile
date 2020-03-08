FROM python:3.8.2

LABEL maintainer "Joao Maia <joao@joaovrmaia.com>"

COPY ./app /app

WORKDIR /app

RUN useradd -r app \
    && chown -R app /app \
    && apt update -y \
    && apt dist-upgrade -y \
    && pip install poetry \
    && poetry config virtualenvs.create false \
    && poetry install

ENV VERSION=0.1.0

EXPOSE 5000

USER app

ENTRYPOINT ["gunicorn"]

CMD ["--bind", "0.0.0.0:5000", "whoami:app"]
