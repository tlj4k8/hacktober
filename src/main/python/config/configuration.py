from configparser import ConfigParser
from src import constants
import os

DEVELOPMENT_CONFIG_FILE_PATH = str(constants.ROOT_DIR) + os.sep + "resources" + os.sep + "htbdev.cfg"

def fetch_database_configs(config_path):
    config = ConfigParser()
    config.read(config_path)
    return config['Database']
