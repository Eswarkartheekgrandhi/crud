from flask import Flask, request, redirect, render_template
import psycopg2

app = Flask(__name__)

DB_CONFIG = {
    "dbname": "cruddb",
    "user": "postgres",
    "password": "7702",
    "host": "localhost",
    "port": 5432
}

def get_connection():
    return psycopg2.connect(**DB_CONFIG)

@app.route("/")
def list_users():
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT * FROM users ORDER BY id")
    users = cur.fetchall()
    conn.close()
    return render_template("list_users.html", users=users)

@app.route("/add", methods=["POST"])
def add_user():
    username = request.form["username"]
    password = request.form["password"]
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("INSERT INTO users (username, password) VALUES (%s, %s)", (username, password))
    conn.commit()
    conn.close()
    return redirect("/")

@app.route("/edit/<int:user_id>", methods=["GET", "POST"])
def edit_user(user_id):
    conn = get_connection()
    cur = conn.cursor()
    if request.method == "POST":
        username = request.form["username"]
        password = request.form["password"]
        cur.execute("UPDATE users SET username=%s, password=%s WHERE id=%s", (username, password, user_id))
        conn.commit()
        conn.close()
        return redirect("/")
    else:
        cur.execute("SELECT username, password FROM users WHERE id=%s", (user_id,))
        user = cur.fetchone()
        conn.close()
        return render_template("edit_user.html", username=user[0], password=user[1])

@app.route("/delete/<int:user_id>")
def delete_user(user_id):
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("DELETE FROM users WHERE id=%s", (user_id,))
    conn.commit()
    conn.close()
    return redirect("/")

if __name__ == "__main__":
    app.run(debug=True)
