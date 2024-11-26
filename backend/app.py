from flask import Flask
import mysql.connector

app = Flask(__name__)

@app.route("/")
def hello():
    return """
        <html>
            <body>
                <h1>Hello, this is a simple demo backend connected to MySQL!</h1>
            </body>
        </html>
        """

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)