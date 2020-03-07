FROM python:3.8

LABEL maintainer "Joao Maia <joao@joaovrmaia.com>"

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

ENV VERSION=0.0.1

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["app.py"]
