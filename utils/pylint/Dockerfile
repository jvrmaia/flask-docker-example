FROM jvrmaia/flask-docker-example:latest

LABEL maintainer "Joao Maia <joao@joaovrmaia.com>"

USER root

RUN pip3 install pylint

ENTRYPOINT ["pylint"]

CMD ["."]
