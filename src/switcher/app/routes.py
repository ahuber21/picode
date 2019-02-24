"""
routes.py for the switcher web app project
"""

import json
import os

from flask import render_template, request

from app import app
from utils.helpers import get_states, get_states_file
from utils.log import get_logger
from utils.config import get_config

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
    return render_template("buttons.html", config=get_config(), states=get_states())


@app.route("/toggle", methods=["POST"])
def toggle():
    port = request.form.get("port")
    state = request.form.get("state")
    log.info("Switching port %s. New state: %s", port, state)
    states = get_states()
    states[port] = state
    with open(get_states_file(), "w") as fp:
        json.dump(states, fp)
    return "Thanks"
