APP_VERSION=0.1.0

dep:
	poetry install

run-local: dep
	FLASK_APP=whoami.py flask run

img:
	docker build --rm -t "whoami:${APP_VERSION}" .

run-docker: img
	docker run --rm -d -p 5000 "whoami:${APP_VERSION}" --name "whoami:${APP_VERSION}"

