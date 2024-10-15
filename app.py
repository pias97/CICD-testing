from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
   return "OLLOOO CI/CD World! HOW you doin!!!"

if __name__ == "__main__":
   app.run(host='0.0.0.0', port=3456)
