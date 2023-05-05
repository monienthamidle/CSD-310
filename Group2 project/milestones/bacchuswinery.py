import mysql.connector

config = {
    "user": "root",
    "password": "#Aphiaaka0608",
    "host": "localhost",
    "database": "bacchus_winery",
    "raise_on_warnings": True
}

#database connection
db = mysql.connector.connect(**config)

mycursor = db.cursor()

mycursor.execute("SELECT * FROM bacchusproducts,distributors")

product_Table = mycursor.fetchall()

print

for row in product_Table:
    print(row)