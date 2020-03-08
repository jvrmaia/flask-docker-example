Flask dockerize example
----

# Requirements

* Python 3.8+
* Docker

# Run local

```
pip install -r requirements.txt
FLASK_APP=app.py flask run
```

# Build container

docker build -t flask-example:0.1.0 .

# Run container

docker run --rm -d -p 8080:5000 flask-example:0.1.0

