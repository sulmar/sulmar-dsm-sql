-- Filtrowanie na podstawie warto�ci zagregowanej

-- Znajd� wszystkie aktorki, kt�re zagra�y wi�cej ni� w 30 filmach
SELECT 
	actor.actor_id,
	COUNT(*) as film_count
FROM actor
INNER JOIN film_actor
	ON actor.actor_id = film_actor.actor_id
WHERE actor.first_name LIKE '%A'
-- WHERE COUNT(*) > 30 -- B��d: Warto�� zagregowana nie mo�e wyst�powa� w klauzuli WHERE.	
GROUP BY
	actor.actor_id
HAVING COUNT(*) > 30	-- Filtrowanie na podstawie warto�ci zagregowanej
ORDER BY film_count DESC

-- Wy�wietl tylko takie kategorie filmowe, w kt�rych mamy powy�ej 70 film�w

SELECT
	count(*) as  ilosc,
	c.name
FROM film
       INNER JOIN film_category as fc
			ON fc.film_id = film.film_id
       INNER JOIN category as c	
			on c.category_id = fc.category_id
GROUP BY c.name
HAVING count(*) > 70
ORDER BY ilosc desc

