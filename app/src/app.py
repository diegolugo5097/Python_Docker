from flask import Flask, jsonify
from users import users

app = Flask(__name__)

@app.route('/', methods = ['GET'])
def index():
    return jsonify({"responde": "Hello world"})

@app.route('/users')
def userHandle():
    return jsonify({'users': users})

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=4000, debug=True)