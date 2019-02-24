"""
Helpers dealing with relative and absolute directories
"""

import os
import shlex
import subprocess


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
