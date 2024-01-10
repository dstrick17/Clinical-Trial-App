import os
import csv

from cs50 import SQL
from flask import Flask, flash, redirect, render_template, request, session

app = Flask(__name__)


# Configure CS50 Library to use SQLite database
db = SQL("sqlite:///patient_info.db")
# Create transactions table by executing SQL command in flask application
db.execute("""
        CREATE TABLE IF NOT EXISTS patients (
        PatientID INTEGER PRIMARY KEY AUTOINCREMENT,
        LastName TEXT,
        FirstName TEXT,
        Age INTEGER,
        WhoGroup INTEGER,
        BMI REAL,
        PVR REAL,
        FVC REAL,
        PDE5 TEXT,
        Prost TEXT,
        ERA TEXT,
        Email TEXT
);
""")


@app.route("/", methods=["GET"])
def homepage():
    return render_template('homepage.html')

@app.route("/confirmation", methods=["GET"])
def confirmation():
        return render_template("/confirmation.html")



@app.route("/add_patient", methods=["GET", "POST"])
def add_patient():
    if request.method == 'POST':


        # Retrieve data from the from HTML form
        first_name = request.form['first_name']
        last_name = request.form['last_name']
        age = request.form['age']
        who_group = request.form['who_group']
        bmi = request.form['bmi']
        pvr = request.form['pvr']
        fvc = request.form['fvc']
        pde5 = request.form['pde5']
        prost = request.form['prost']
        era = request.form['era']
        email = request.form['email']


        # Insert data into the database
        db.execute("INSERT INTO patients (FirstName, LastName, Age, WhoGroup, BMI, PVR, FVC, PDE5, Prost, ERA, Email) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", first_name, last_name, age, who_group, bmi, pvr, fvc, pde5, prost, era, email)

        # Redirect to a confirmation page or another part of your website
        return redirect("/confirmation")

    return render_template("add_patient.html")


if __name__ == '__main__':
    app.run(debug=True)
# ______________________________________________________________________________________________________________________________________