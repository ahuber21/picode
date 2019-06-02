"""
Helpers dealing with relative and absolute directories
"""

import os
import shlex
import subprocess

import json


def run(args, **kwargs) -> str:
    if type(args) is str:
        args = shlex.split(args)
    # may raise CalledProcessError
    result = subprocess.run(args, check=True, stdout=subprocess.PIPE, **kwargs)
    return result.stdout.decode("utf-8")


def get_project_dir() -> str:
    """
    Return the absolute path the project directory
    /absolute/path/to/switcher
    """
    project_base = run("git rev-parse --show-toplevel").rstrip("\n")
    return os.path.join(project_base, "src", "switcher")


def get_states_file() -> str:
    """
    Full path to the states file
    """
    states_file = os.path.join(get_project_dir(), "app", "switchstates.json")
    return states_file


def get_states() -> dict:
    """
    Load the switch states from the json file.
    """
    with open(get_states_file()) as fp_states:
        try: 
                states = json.load(fp_states)
        except json.decoder.JSONDecodeError:
                return dict()
        return states
