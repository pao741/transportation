from flask import Flask, render_template
import psycopg2
conn = psycopg2.connect(database="postgres", user="postgres",
                        password="milanomilano", host="127.0.0.1", port="5432")
print("Database Connected....")

app = Flask(__name__)


@app.route('/')
def index():
    # return "i did it !"
    # return "please"
    return render_template('index.html')


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
