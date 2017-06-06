activate_this = '/home/rasmus/venv/bin/activate_this.py'
execfile(activate_this, dict(__file__=activate_this))

from flask import Flask

app = Flask(__name__)
application = app # The trick is HERE! Add this extra line!

@app.route("/")
def hello():
    return "Hello Flask!"

if __name__ == "__main__":
    app.run()
