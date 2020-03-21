from flask import Flask, render_template, request, url_for
import psycopg2
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


class Graph:

    def __init__(self):
        self.graph = dict()
        self.createMapping()

    def createMapping(self):
        cur.execute("select * from station;")
        rows = cur.fetchall()
        n = len(rows)
        l = 0
        for i in range(n):
            row = rows[i]
            stationId = row[0]
            stationName = row[1]
            if i == 0:
                prev = stationName
                pid = stationId
                l += 1
            elif pid[:3] != stationId[:3]:
                prev = stationName
                pid = stationId
                l += 1
            else:
                self.addEdge(prev, stationName)
                self.addEdge(stationName, prev)
                prev = stationName
                pid = stationId

    def addEdge(self, u, v):
        if u not in self.graph:
            self.graph[u] = set()
        self.graph[u].add(v)

    def dfs(self, src, des):
        path = []
        visited = set()
        self.dfs_helper(src, des, visited, path)
        return self.path

    def dfs_helper(self, current, des, visited, path):
        current_path = path[:]
        visited.add(current)
        current_path.append(current)
        if current == des:
            self.path = current_path
        for i in self.graph[current]:
            if i not in visited:
                self.dfs_helper(i, des, visited, current_path)


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


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
