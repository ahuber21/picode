"""
routes.py for the switcher web app project
"""

import os

from flask import render_template

from app import app
from utils.log import get_logger

log = get_logger(os.path.basename(__file__))


@app.errorhandler(404)
def not_found_error(error):
    return render_template("404.html"), 404


@app.errorhandler(500)
def internal_error(error):
    return render_template("500.html"), 500


@app.route("/")
@app.route("/index")
def index():
    return render_template("buttons.html")
