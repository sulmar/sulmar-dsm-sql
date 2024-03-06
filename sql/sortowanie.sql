-- Porz¹dkowanie zbioru na podstawie kolumny
SELECT * FROM customer
ORDER BY first_name

-- Porz¹dkowanie zbioru na podstawie kilku kolumn
SELECT * FROM customer
ORDER BY first_name, last_name

-- Porz¹dkowanie malej¹co
SELECT * FROM customer
ORDER BY first_name DESC

-- Wyœwietl 10 najwiêkszych p³atnoœci 

SELECT TOP(10) * FROM payment
ORDER BY amount DESC

-- Wyœwietl 10 filmów z najwiêkszem kosztem wymiany
SELECT TOP(10) * FROM film
ORDER BY replacement_cost DESC

-- Wyœwietl filmy z kategorii PG-13 posortowane na podstawie d³ugoœci trwania

SELECT * FROM film
WHERE rating = 'PG-13'
ORDER BY [length] DESC -- jest zawsze na koñcu






