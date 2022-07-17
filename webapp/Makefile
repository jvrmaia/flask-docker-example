APP_VERSION=0.2.0

dep:
	poetry install

run-local: dep
	FLASK_APP=whoami.py flask run

img:
	docker build --rm -t "whoami:${APP_VERSION}" .

run-docker: img
	docker-compose up -d
