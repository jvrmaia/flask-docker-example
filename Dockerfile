FROM python:3.8.2

LABEL maintainer "Joao Maia <joao@joaovrmaia.com>"

COPY . /app

WORKDIR /app

RUN apt update -y \
    && apt dist-upgrade -y \
    && pip install poetry \
    && poetry config virtualenvs.create false \
    && poetry install

ENV VERSION=0.1.0

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["app.py"]
