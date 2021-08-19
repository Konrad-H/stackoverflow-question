import logging
import wave
import json

from flask import Flask, render_template, request

app = Flask(__name__)


@app.route("/")
def index():
    print("Hello World I am Sea")
    return "Hello big world"


if __name__ == "__main__":
    app.logger = logging.getLogger("audio-gui")
    app.run( host='0.0.0.0',port=5001, debug=True)
