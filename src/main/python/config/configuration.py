from configparser import ConfigParser

# Look, this isn't the best but I'm going for speed right now rather than enterprise integrity
DEVELOPMENT_CONFIG_FILE_PATH = "/home/george/htbdev.cfg"

def fetch_database_configs(config_path):
    config = ConfigParser()
    config.read(config_path)
    return config['Database']
