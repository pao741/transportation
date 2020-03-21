from flask import Flask, render_template, request, url_for
import psycopg2
from collection import defaultdict
conn = psycopg2.connect(database="postgres", user="postgres",
                        password="milanomilano", host="127.0.0.1", port="5432")
print("Database Connected....")
cur = conn.cursor()
cur.execute(
    "select stationName from station;")
rows = cur.fetchall()
stationName = []
for row in rows:
    stationName.append(row[0])
stationName = sorted(stationName)

app = Flask(__name__)


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/find_route')
def find_route():
    return render_template('find_route.html', stationName=stationName)


@app.route('/find_route', methods=['POST'])
def find_route_post():
    from_station = request.form['from']
    to_station = request.form['to']
    result = "find result"
    return render_template('find_route.html', stationName=stationName, result=result)


@app.route('/can_reach')
def can_reach():
    return render_template('can_reach.html', stationName=stationName)


@app.route('/can_reach', methods=['POST'])
def can_reach_post():
    from_station = request.form['from']
    to_station = request.form['to']
    result = "find result"
    return render_template('can_reach.html', stationName=stationName, result=result)


@app.route('/all_routes')
def all_routes():
    return render_template('all_routes.html', stationName=stationName)


@app.route('/all_routes', methods=['POST'])
def all_routes_post():
    from_station = request.form['from']
    to_station = request.form['to']
    result = "find result"
    return render_template('all_routes.html', stationName=stationName, result=result)


class Graph:

    def __init__(self):
        self.graph = dict()

    def addEdge(self, u, v):
        self.graph[u] = v


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
