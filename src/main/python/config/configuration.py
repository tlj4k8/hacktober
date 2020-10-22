from configparser import ConfigParser
import pathlib
import os

# Look, this isn't the best but I'm going for speed right now rather than enterprise integrity
DEVELOPMENT_CONFIG_FILE_PATH = str(pathlib.Path(__file__).parent.parent.parent.parent.parent) \
                               + os.sep + "resources" + os.sep + "htbdev.cfg"

def fetch_database_configs(config_path):
    config = ConfigParser()
    config.read(config_path)
    return config['Database']
