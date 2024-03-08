-- Zbiory

-- Zbi�r unikalnych warto�ci
SELECT DISTINCT first_name FROM actor

SELECT DISTINCT first_name FROM customer

-- Suma zbior�w C = A + B
-- UNION - zwraca wszystkie unikalne elementy (bez duplikat�w)
SELECT first_name FROM actor
UNION
SELECT first_name FROM customer

-- UNION ALL - zwraca wszystkie elementy zawieraj�ce r�wnie� duplikaty
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer


SELECT first_name, last_name FROM customer
UNION 
SELECT first_name, last_name FROM actor


-- R�nica zbior�w

SELECT DISTINCT first_name FROM actor
EXCEPT 
SELECT DISTINCT first_name FROM customer

-- uwaga: r�nica zbior�w nie jest przemienna!

-- Por�wnaj wyniki zapyta�:

SELECT first_name FROM actor
EXCEPT 
SELECT first_name FROM customer

SELECT first_name FROM customer
EXCEPT 
SELECT first_name FROM actor

-- Iloczyn zbior�w (cz�� wsp�lna)
SELECT first_name FROM actor
INTERSECT
SELECT first_name FROM customer

-- Iloczy� kartezja�ski (mno�ymy ka�dy element ze zbioru A z ka�dym elementem ze zbioru B)
SELECT * FROM actor
CROSS JOIN customer

-- Wy�wietl tytu�y film�w, kt�re znajduj� si� obu wypo�yczalniach (store). Ile jest takich film�w?

SELECT film_id FROM film
EXCEPT SELECT distinct f.film_id FROM film AS f
INNER JOIN
       inventory AS i
              ON f.film_id = i.film_id
INNER JOIN
rental AS r

ON i.inventory_id = r.inventory_id

SELECT film_id FROM film
EXCEPT 
SELECT i.film_id 
FROM inventory AS i
	INNER JOIN rental AS r
	ON i.inventory_id = r.inventory_id

SELECT * from rental 



SELECT film_id, title FROM film
EXCEPT SELECT distinct f.film_id, f.title 
FROM film AS f
INNER JOIN
       inventory AS i
              ON f.film_id = i.film_id
INNER JOIN
rental AS r

ON i.inventory_id = r.inventory_id

-- Wy�wietl tytu�y film�w, kt�re znajduj� si� tylko w drugiej wypo�yczalni (store). Ile jest takich film�w?

SELECT title FROM film AS f
	INNER JOIN inventory AS i
		ON i.film_id = f.film_id
	WHERE i.store_id = 2
EXCEPT 
SELECT title FROM film AS f
	INNER JOIN inventory AS i
		ON i.film_id = f.film_id
	WHERE i.store_id = 1
	
