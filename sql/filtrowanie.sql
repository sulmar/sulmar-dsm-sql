
-- Filtrowanie rekord�w
SELECT 
	first_name,
	last_name,
	email
FROM 
	customer 
WHERE 
	active = 0

-- Filtrowanie na podstawie kolumny tekstowej
SELECT * FROM customer WHERE first_name = 'JOHN'

-- Wy�wietl list� film�w (title, description, rating) tylko z kategorii PG
SELECT title, description, rating FROM film WHERE rating = 'PG'

-- Operator por�wnania - wi�ksze/mniejsze
SELECT * FROM payment WHERE amount >= 10.99

-- Wy�wietl p�atno�ci, kt�re s� poni�ej 4.99
SELECT * FROM payment WHERE amount < 4.99

-- Operator logiczny AND (iloczyn logiczny)

SELECT * FROM customer WHERE first_name = 'JOHN' AND last_name = 'SMITH'

-- Wy�wietl p�atno�ci pomi�dzy warto�ciami (2.99 .. 4.99) 
SELECT * FROM payment WHERE amount > 2.99 AND amount < 4.99

SELECT * FROM customer WHERE active = 1 AND store_id = 2

-- Wy�wietl p�atno�ci pomi�dzy warto�ciami <2.99 .. 4.99>
SELECT * FROM payment WHERE amount >= 2.99 AND amount <= 4.99

-- Operator pomi�dzy
SELECT * FROM payment WHERE amount BETWEEN 2.99 AND 4.99

-- Operator logiczny OR (suma logiczna)
SELECT * FROM customer WHERE first_name = 'BETTY' OR first_name = 'JOHN' OR first_name = 'KAREN'

-- Operator IN
SELECT * FROM customer WHERE first_name IN ('BETTY', 'JOHN', 'KAREN')

-- Wy�wietl filmy w kategoriach R i PG
SELECT * FROM film WHERE rating = 'R' OR rating = 'PG'

SELECT * FROM film WHERE rating IN ('R', 'PG')

-- Wy�wietl filmy, kt�re s� w kategoriach R i PG oraz ich d�ugo�� trwania jest mniejsza ni� 100 min.
SELECT * FROM film WHERE (rating = 'R' OR rating = 'PG') AND [length] < 100 

SELECT * FROM film WHERE rating IN ('R', 'PG') AND [length] < 100 

-- AND = *
-- OR = +

-- a + b * c = b * c + a
-- a OR b AND c = b AND c OR a
-- (a + b) * c 

-- Wy�wietl klient�w kt�rych imiona rozpoczynaj� si� od litery AN
-- % - dowolne znaki
SELECT * FROM customer WHERE first_name LIKE 'AN%'

-- Wy�wietl klient�w kt�rych imiona koncz� si� na litery EA
SELECT * FROM customer WHERE first_name LIKE '%EA'

-- Wy�wietl klient�w kt�rych imi� zawiera DR
SELECT * FROM customer WHERE first_name LIKE '%DR%'

SELECT * FROM film WHERE rating IN ('R', 'PG') AND title LIKE '%FAMILY%'


SELECT * FROM payment WHERE payment_date >= '2005-07-01'

SELECT * FROM payment WHERE payment_date >= '2005-07-01' AND payment_date <= '2005-07-31'

-- Wy�wietl p�atno�ci pomi�dzy 2005-07-01 .. 2005-07-31
SELECT * FROM payment WHERE payment_date BETWEEN '2005-07-01' AND '2005-07-31'
































