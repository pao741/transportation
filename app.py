from flask import Flask, render_template
import psycopg2
conn = psycopg2.connect(database="postgres", user="postgres",
                        password="milanomilano", host="127.0.0.1", port="5432")
print("Database Connected....")
cur = conn.cursor()
# cursor is used to execute query
cur.execute(
    "select stationName from station")
rows = cur.fetchall()
stationName = []
for row in rows:
    stationName.append(str(row[0]))
stationName = sorted(stationName)
# print(stationName)

app = Flask(__name__)


@app.route('/')
def index():
    # items = get_your_data_from_db()
    # return render_template('index.html', station_names=station_names)
    return render_template('index.html')


@app.route('/find_route')
def find_route():
    return render_template('find_route.html')


@app.route('/can_reach')
def can_reach():
    return render_template('can_reach.html')


@app.route('/all_routes')
def all_routes():
    return render_template('all_routes.html')


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
