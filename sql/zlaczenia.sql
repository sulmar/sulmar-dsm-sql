-- Z³¹czenie wewnêtrzne (INNER JOIN)
SELECT 
	first_name, 
	last_name, 	
	address.address,
	address.postal_code
FROM 
	customer
INNER JOIN -- typ z³¹czenia
	address 
		ON customer.address_id = address.address_id -- warunek z³¹czenia
		  		--         ^^^                    ^^^
		        --          FK - klucz obcy         PK - klucz podstawowy


-- Wyœwietl imiê i nazwisko klienta dokonuj¹cego p³atnoœæ
-- | payment_id | first_name | last_name | amount |

SELECT
	payment.payment_id,
	customer.first_name,
	customer.last_name,
	payment.amount
FROM
	payment
INNER JOIN
	customer
		ON payment.customer_id = customer.customer_id   -- warunek z³¹czenia
		--         ^^^                    ^^^
		--          FK - klucz obcy         PK - klucz podstawowy

-- Wyœwietl tytu³, opis i jêzyk filmu
-- | title | description | language

SELECT	
 film.title,
 film.description,
 language.name
FROM
	film 
		INNER JOIN language	
			ON film.language_id = language.language_id

-- Aliasy tabel
SELECT
	r.rental_id,
	r.rental_date,
	r.return_date,
	c.customer_id,
	c.first_name,
	c.last_name,
	c.email
FROM 
	rental AS r
		INNER JOIN
			customer AS c
				ON r.customer_id = c.customer_id

select
	f.title,
	f.description,
	l.name
from 
	film as f
		inner join language as l
			on f.language_id = l.language_id
	

-- Wiele z³¹czeñ wewnêtrznych
SELECT 
	first_name, 
	last_name, 	
	address.address,
	address.postal_code,
	address.city_id,
	city.city,
	city.country_id,
	country.country
FROM 
	customer
	INNER JOIN address 
		ON customer.address_id = address.address_id
	INNER JOIN city
		ON address.city_id = city.city_id
	INNER JOIN country
		ON city.country_id = country.country_id

-- Wyœwietl p³atnoœci wraz z informacjami o pracowniku
-- | payment_id | payment_date | staff_first_name | staff_last_name | city | country |


 SELECT
	payment.payment_id,
	payment.payment_date,
	staff.first_name,
	staff.last_name,	
	city.city,
	country.country
FROM 
	payment
		INNER JOIN staff
              ON payment.staff_id = staff.staff_id
		INNER JOIN address
			ON staff.address_id = address.address_id
        INNER JOIN city
			ON address.city_id = city.city_id
		 INNER JOIN country
            ON city.country_id = country.country_id


SELECT * FROM film 	

SELECT * FROM category


SELECT 
	film.title,
	category.name
FROM film_category
	INNER JOIN film
		ON film_category.film_id = film.film_id
	INNER JOIN category
		ON film_category.category_id = category.category_id
ORDER BY title

-- Wyœwietl imiê i nazwisko aktora oraz tytu³ filmu w którym zagra³
-- | actor_first_name | actor_last_name | title |

 SELECT
	film.title,
	actor.first_name,
	actor.last_name
FROM film
	INNER JOIN film_actor
		ON film.film_id = film_actor.film_id
    INNER JOIN actor
		ON film_actor.actor_id = actor.actor_id

-- | actor_full_name | title |

SELECT
	film.title,
	CONCAT(actor.first_name, ' ', actor.last_name) AS actor_full_name
FROM film
	INNER JOIN film_actor
		ON film.film_id = film_actor.film_id
    INNER JOIN actor
		ON film_actor.actor_id = actor.actor_id





