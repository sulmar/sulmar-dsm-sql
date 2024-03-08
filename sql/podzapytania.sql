
-- Podzapytania

SELECT TOP(10) * FROM (

	SELECT title FROM film AS f
		INNER JOIN inventory AS i
			ON i.film_id = f.film_id
		WHERE i.store_id = 2
	EXCEPT 
	SELECT title FROM film AS f
		INNER JOIN inventory AS i
			ON i.film_id = f.film_id
		WHERE i.store_id = 1 ) AS unique_films
