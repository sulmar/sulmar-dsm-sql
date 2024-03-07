-- Funkcje agreguj¹ce
SELECT COUNT(*) FROM customer
SELECT SUM(amount) FROM payment

-- Wyœwietl œredni czas trwania wypo¿yczenia 
SELECT  AVG(DATEDIFF(day, rental_date, return_date)) AS avg_rental_days
FROM rental


SELECT * FROM customer

SELECT * FROM store

SELECT COUNT(*) FROM customer WHERE store_id = 1
SELECT COUNT(*) FROM customer WHERE store_id = 2

-- | store_id | customer_count |

-- Grupowanie

SELECT 
	store_id,
	COUNT(*) AS customer_count
FROM
	customer
GROUP BY
	store_id

SELECT 
	payment.staff_id,
	staff.first_name,
	staff.last_name,
	COUNT(*) AS payment_count	-- funkcja agreguj¹ca (agregat)
FROM payment
	INNER JOIN staff
		ON payment.staff_id = staff.staff_id
GROUP BY 
	payment.staff_id, staff.first_name, staff.last_name

-- Ile by³o zrealizowanych p³atnoœci w poszczególnych miesi¹cach w roku 2005?
SELECT 
  MONTH(payment_date) as payment_month,
  COUNT(*) as payment_count
FROM 
	payment
WHERE
	YEAR(payment_date) = 2005
GROUP BY
	MONTH(payment_date) 

-- Ilu aktorów zagra³o w poszczególnych kategoriach filmów?

-- | category_name | actor_count |

SELECT 	
	c.name AS category_name,
	count(*) AS actor_count
FROM
	film AS f
	INNER JOIN film_category AS fc
		ON f.film_id = fc.film_id
	INNER JOIN category AS c
		ON c.category_id = fc.category_id
	INNER JOIN film_actor AS fa
		ON f.film_id = fa.film_id
	INNER JOIN actor AS a
		ON a.actor_id = fa.actor_id
GROUP BY
	c.name
ORDER BY	 actor_count DESC

-- Ilu mamy klientów w poszczególnych krajach? Uporz¹dkuj od najwiêkszej iloœci

SELECT 
	country.country,
	COUNT(*) AS customer_count
FROM customer AS c
	INNER JOIN address AS a
		ON c.address_id = a.address_id
	INNER JOIN city 
		ON a.city_id = city.city_id
	INNER JOIN country	
		ON city.country_id = country.country_id
GROUP BY
	country.country
ORDER BY customer_count DESC

-- ZnajdŸ najczêœciej wypo¿yczane filmy	
-- | title | rental_count | 




