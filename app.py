from flask import Flask, render_template
from datetime import datetime
import re


app = Flask(__name__)


@app.route("/")
def home():
    return "Hello, Flask!"

@app.route("/hello/<name>")
def hello_there(name):
    #formatted_now = now.strftime("%A, %d %B, %Y at %X")

    #content = "<strong>Hello there, " + name + "!</strong> It's " + formatted_now
    #content = f'Hello there, {name}! It\'s {formatted_now}'

    return render_template('index.html', title='Hello, Flask', name=name, date=datetime.now())