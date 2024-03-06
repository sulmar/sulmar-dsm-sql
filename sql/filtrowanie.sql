
-- Filtrowanie rekordów
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

-- Wyœwietl listê filmów (title, description, rating) tylko z kategorii PG
SELECT title, description, rating FROM film WHERE rating = 'PG'

-- Operator porównania - wiêksze/mniejsze
SELECT * FROM payment WHERE amount >= 10.99

-- Wyœwietl p³atnoœci, które s¹ poni¿ej 4.99
SELECT * FROM payment WHERE amount < 4.99

-- Operator logiczny AND (iloczyn logiczny)

SELECT * FROM customer WHERE first_name = 'JOHN' AND last_name = 'SMITH'

-- Wyœwietl p³atnoœci pomiêdzy wartoœciami (2.99 .. 4.99) 
SELECT * FROM payment WHERE amount > 2.99 AND amount < 4.99

SELECT * FROM customer WHERE active = 1 AND store_id = 2

-- Wyœwietl p³atnoœci pomiêdzy wartoœciami <2.99 .. 4.99>
SELECT * FROM payment WHERE amount >= 2.99 AND amount <= 4.99

-- Operator pomiêdzy
SELECT * FROM payment WHERE amount BETWEEN 2.99 AND 4.99

-- Operator logiczny OR (suma logiczna)
SELECT * FROM customer WHERE first_name = 'BETTY' OR first_name = 'JOHN' OR first_name = 'KAREN'

-- Operator IN
SELECT * FROM customer WHERE first_name IN ('BETTY', 'JOHN', 'KAREN')

-- Wyœwietl filmy w kategoriach R i PG
SELECT * FROM film WHERE rating = 'R' OR rating = 'PG'

SELECT * FROM film WHERE rating IN ('R', 'PG')

-- Wyœwietl filmy, które s¹ w kategoriach R i PG oraz ich d³ugoœæ trwania jest mniejsza ni¿ 100 min.
SELECT * FROM film WHERE (rating = 'R' OR rating = 'PG') AND [length] < 100 

SELECT * FROM film WHERE rating IN ('R', 'PG') AND [length] < 100 

-- AND = *
-- OR = +

-- a + b * c = b * c + a
-- a OR b AND c = b AND c OR a
-- (a + b) * c 

-- Wyœwietl klientów których imiona rozpoczynaj¹ siê od litery AN
-- % - dowolne znaki
SELECT * FROM customer WHERE first_name LIKE 'AN%'

-- Wyœwietl klientów których imiona koncz¹ siê na litery EA
SELECT * FROM customer WHERE first_name LIKE '%EA'

-- Wyœwietl klientów których imiê zawiera DR
SELECT * FROM customer WHERE first_name LIKE '%DR%'

SELECT * FROM film WHERE rating IN ('R', 'PG') AND title LIKE '%FAMILY%'


SELECT * FROM payment WHERE payment_date >= '2005-07-01'

SELECT * FROM payment WHERE payment_date >= '2005-07-01' AND payment_date <= '2005-07-31'

-- Wyœwietl p³atnoœci pomiêdzy 2005-07-01 .. 2005-07-31
SELECT * FROM payment WHERE payment_date BETWEEN '2005-07-01' AND '2005-07-31'
































