APP_VERSION=0.2.0

dep:
	cd ./app && poetry install

run-local: dep
	FLASK_APP=./app/whoami.py flask run

img:
	docker build --rm -t "whoami:${APP_VERSION}" .

run-docker: img
	docker-compose up -d
