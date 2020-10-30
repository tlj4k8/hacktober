import flask
from flask import jsonify

from src.main.python.datastore import house_dao

app = flask.Flask(__name__)
app.config["DEBUG"] = True


@app.route('/', methods=['GET'])
def fetch_all_houses():
    return jsonify(house_dao.get_all_houses()), 200

app.run()
