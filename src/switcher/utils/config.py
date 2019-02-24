"""
Wrapper around the json config
Read and provide the json file
"""

import json
import os

# from python_json_config import ConfigBuilder

from utils.helpers import get_project_dir


def get_config() -> dict:
    config_file = os.path.join(get_project_dir(), "config.json")
    # builder = ConfigBuilder()
    # config = builder.parse_config(config_file)
    with open(config_file) as fp_cfg:
        config = json.load(fp_cfg)
    return config
