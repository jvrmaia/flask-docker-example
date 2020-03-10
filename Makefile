APP_VERSION=0.1.1

dep:
	cd ./app && poetry install

run-local: dep
	FLASK_APP=./app/whoami.py flask run

img:
	docker build --rm -t "whoami:${APP_VERSION}" .

run-docker: img
	docker run --rm -d -p 5000 --hostname whoami --name whoami "whoami:${APP_VERSION}"
