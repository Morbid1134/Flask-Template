# import Modules
from flask import Flask, render_template, url_for

# Create a Flask web application
app = Flask(__name__)

# Route the home page
@app.route("/")
def home():
    return render_template("index.html")

# Run Flask application
if __name__ == "__main__":
    app.run(debug=True)