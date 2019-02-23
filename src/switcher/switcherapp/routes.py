"""
routes.py for the switcher web app project
"""

import os

from flask import render_template

from switcherapp import switcherapp
from utils.log import get_logger

log = get_logger(os.path.basename(__file__))


@switcherapp.errorhandler(404)
def not_found_error(error):
    return render_template("404.html"), 404


@switcherapp.errorhandler(500)
def internal_error(error):
    return render_template("500.html"), 500


@switcherapp.route("/")
@switcherapp.route("/index")
def index():
    return render_template("buttons.html")
