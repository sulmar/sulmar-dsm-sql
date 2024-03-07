-- Z��czenie wewn�trzne (INNER JOIN)
SELECT 
	first_name, 
	last_name, 	
	address.address,
	address.postal_code
FROM 
	customer
INNER JOIN -- typ z��czenia
	address 
		ON customer.address_id = address.address_id -- warunek z��czenia
		  		--         ^^^                    ^^^
		        --          FK - klucz obcy         PK - klucz podstawowy


-- Wy�wietl imi� i nazwisko klienta dokonuj�cego p�atno��
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
		ON payment.customer_id = customer.customer_id   -- warunek z��czenia
		--         ^^^                    ^^^
		--          FK - klucz obcy         PK - klucz podstawowy

-- Wy�wietl tytu�, opis i j�zyk filmu
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
	

-- Wiele z��cze� wewn�trznych
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

-- Wy�wietl p�atno�ci wraz z informacjami o pracowniku
-- | payment_id | payment_date | staff_first_name | staff_last_name | city | country |




