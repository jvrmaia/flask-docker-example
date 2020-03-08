import socket
from flask import Flask, jsonify
from decouple import config

app = Flask(__name__)

VERSION = config('VERSION', 'dev', cast=str)

@app.route("/")
def index():
    hostname = socket.gethostname()
    
    info = {
        'app_name': 'whoami',
        'hostname': hostname,
        'version': VERSION
    }

    return jsonify(info)
