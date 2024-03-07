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




	




