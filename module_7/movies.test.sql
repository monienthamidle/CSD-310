SELECT studio_id, studio_name
FROM studio;

SELECT genre_id, genre_name
FROM genre;

SELECT film_name, film_runtime
FROM film
WHERE film_runtime <= 120;


SELECT film_name, film_director
FROM film
ORDER BY flim_director ASC ;
