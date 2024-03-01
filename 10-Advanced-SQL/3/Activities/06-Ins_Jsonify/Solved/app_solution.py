# Import the dependencies.
from flask import Flask, jsonify

# Create an app, being sure to pass __name__
app = Flask(__name__)

# Create a dictionary to hold a key, value pair.
hello_dict = {"Hello": "World!"}

# Define what to do when a user hits the index route.
@app.route("/")
def home():
    return "Hi"

# Define what to do when a user hits the /normal route
@app.route("/normal")
def normal():
    return hello_dict

# Define what to do when a user hits the /jsonified route
@app.route("/jsonified")
def jsonified():
    return jsonify(hello_dict)


if __name__ == "__main__":
    app.run(debug=True)
