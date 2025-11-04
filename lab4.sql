Select first_name, last_name from staff
Where active = True AND picture IS NULL; --3

Select title, length from film
Where length > 50
ORDER BY length; --4

Select title from film
WHERE length>100 AND length<110 AND rating = 'G'
ORDER BY  length; --5

SELECT rating, MIN(length)
AS min_film_length
FROM film
GROUP BY rating
ORDER BY rating; --6

SELECT special_features, SUM(rental_rate) AS total_rental_rate
FROM film
GROUP BY special_features; --7

SELECT rating, COUNT(*) AS film_count
FROM film
GROUP BY rating
HAVING COUNT(*) > 200; --8

SELECT first_name, last_name FROM actor
UNION
SELECT first_name, last_name FROM staff; --9

SELECT first_name, last_name
FROM actor
WHERE (first_name, last_name) NOT IN (
    SELECT first_name, last_name FROM staff ); --10

SELECT film_id, title, length, replacement_cost
FROM film
WHERE length > 100
INTERSECT
SELECT film_id, title, length, replacement_cost
FROM film
WHERE replacement_cost < 25; --11

SELECT DISTINCT rating -- This keyword combination instructs the database to return only unique rows.
FROM film; --12

SELECT release_year, COUNT(*) AS film_count
FROM film
WHERE rental_rate > 5
GROUP BY release_year; --13

UPDATE film
SET replacement_cost = replacement_cost * 0.85
WHERE replacement_cost = (
    SELECT DISTINCT replacement_cost
    FROM film
    ORDER BY replacement_cost DESC
    OFFSET 2 LIMIT 1
); --14

DELETE from film
WHERE length>180; --15

DELETE FROM film
WHERE language_id = (
    SELECT language_id FROM language WHERE name = 'Mandarin' )
RETURNING *; --16


