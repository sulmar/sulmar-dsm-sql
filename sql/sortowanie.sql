-- Porządkowanie zbioru na podstawie kolumny
SELECT * FROM customer
ORDER BY first_name

-- Porządkowanie zbioru na podstawie kilku kolumn
SELECT * FROM customer
ORDER BY first_name, last_name

-- Porządkowanie malejąco
SELECT * FROM customer
ORDER BY first_name DESC

-- Wyświetl 10 największych płatności 

SELECT TOP(10) * FROM payment
ORDER BY amount DESC

-- Wyświetl 10 filmów z największem kosztem wymiany
SELECT TOP(10) * FROM film
ORDER BY replacement_cost DESC

-- Wyświetl filmy z kategorii PG-13 posortowane na podstawie długości trwania

SELECT * FROM film
WHERE rating = 'PG-13'
ORDER BY [length] DESC -- jest zawsze na końcu






