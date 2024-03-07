-- Filtrowanie na podstawie wartoœci zagregowanej

-- ZnajdŸ wszystkie aktorki, które zagra³y wiêcej ni¿ w 30 filmach
SELECT 
	actor.actor_id,
	COUNT(*) as film_count
FROM actor
INNER JOIN film_actor
	ON actor.actor_id = film_actor.actor_id
WHERE actor.first_name LIKE '%A'
-- WHERE COUNT(*) > 30 -- B³¹d: Wartoœæ zagregowana nie mo¿e wystêpowaæ w klauzuli WHERE.	
GROUP BY
	actor.actor_id
HAVING COUNT(*) > 30	-- Filtrowanie na podstawie wartoœci zagregowanej
ORDER BY film_count DESC

-- Wyœwietl tylko takie kategorie filmowe, w których mamy powy¿ej 70 filmów

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

