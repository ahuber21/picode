import json

from utils.helpers import get_states, get_states_file
from utils.config import get_config
from flask import Flask

app = Flask(__name__)

__all__ = ["app"]

from app import routes  # noqa: E402 F401

states = get_states()
config = get_config()

for port in config["switches"].values():
        if str(port) in states:
                continue
        states[str(port)] = "false"

with open (get_states_file(), "w") as fp:
        json.dump (states, fp)
