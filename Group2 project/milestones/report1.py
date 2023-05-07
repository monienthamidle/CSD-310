#report question1 supplies


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

mycursor.execute("SELECT * FROM bacchusproducts")
supply_Table = mycursor.fetchall()

print("Display supply order with delivery dates")

for row in supply_Table:
	print(f"Supply order ID{row[0]} placed on {row[1]} was shipped on {row[3]}")

mycursor.close()

