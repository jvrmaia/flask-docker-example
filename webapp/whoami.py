"""
whoami app
"""

import socket
from flask import Flask, jsonify
from decouple import config

app = Flask(__name__)
version = config("VERSION", "dev", cast=str)


@app.route("/")
def index():
    """
    Root application index.
    Returns JSON with application and host data.
    """
    hostname = socket.gethostname()

    info = {"app_name": "whoami", "hostname": hostname, "version": version}

    return jsonify(info)
