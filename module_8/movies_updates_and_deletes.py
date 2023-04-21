#assignment 8

import mysql.connector

mydb = mysql.connector.connect(
    user="movies_user",
    password="popcorn",
    host="localhost",
    database="movies"
)

cursor = mydb.cursor()

def show_films(cursor, title):
        # inner join query
    cursor.execute("SELECT film_name AS Name, film_director AS Director, genre_name as Genre, studio_name as Studio "
                   "FROM film INNER JOIN genre ON film.genre_id=genre.genre_id INNER JOIN studio ON "
                   "film.studio_id=studio.studio_id")
sqlInsert = "INSERT INTO film (film_name, film_releaseDate, film_runtime, film_director, studio_id, genre_id) VALUES ('Avatar', '2009', '162', 'James Cameron', '3', '2')"
cursor.execute(sqlInsert)
mydb.commit() 
cursor = mydb.cursor()

films = cursor.fetchall()

print("\n -- {} --".format(title))

    
for film in films:
    print("Film Name: {}\nDirector: {}\nGenre Name ID: {}\nStudio Name: {}\n".format(film[1], film[2], film[3]))

show_films(cursor, "DISPLAYING FILMS AFTER INSERT")


#Update the film Alien to a Horror Film
sqlUpdate = "UPDATE film SET genre_id = '1' WHERE film_name = 'Alien'"
cursor.execute(sqlUpdate)
mydb.commit()