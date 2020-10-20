import flask
from flask import jsonify
import pymysql
import sys
from pathlib import Path

sys.path.insert(1, str(Path(__file__).parent.parent))
from datastore import house_dao

app = flask.Flask(__name__)
app.config["DEBUG"] = True


@app.route('/', methods=['GET'])
def fetch_all_houses():
    return jsonify(house_dao.get_all_houses())

app.run()