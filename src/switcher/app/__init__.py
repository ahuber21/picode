from flask import Flask

app = Flask(__name__)

__all__ = ["app"]

from app import routes  # noqa: E402 F401
