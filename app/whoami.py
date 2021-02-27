"""
whoami app
"""

import socket
from flask import Flask, jsonify
from decouple import config

APP = Flask(__name__)
VERSION = config('VERSION', 'dev', cast=str)

@APP.route("/")
def index():
    """
    Root application index.
    Returns JSON with application and host data.
    """
    hostname = socket.gethostname()

    info = {
        'app_name': 'whoami',
        'hostname': hostname,
        'version': VERSION
    }

    return jsonify(info)
