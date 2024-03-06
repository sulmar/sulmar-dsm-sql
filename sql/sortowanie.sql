-- Porz�dkowanie zbioru na podstawie kolumny
SELECT * FROM customer
ORDER BY first_name

-- Porz�dkowanie zbioru na podstawie kilku kolumn
SELECT * FROM customer
ORDER BY first_name, last_name

-- Porz�dkowanie malej�co
SELECT * FROM customer
ORDER BY first_name DESC

-- Wy�wietl 10 najwi�kszych p�atno�ci 

SELECT TOP(10) * FROM payment
ORDER BY amount DESC

-- Wy�wietl 10 film�w z najwi�kszem kosztem wymiany
SELECT TOP(10) * FROM film
ORDER BY replacement_cost DESC

-- Wy�wietl filmy z kategorii PG-13 posortowane na podstawie d�ugo�ci trwania

SELECT * FROM film
WHERE rating = 'PG-13'
ORDER BY [length] DESC -- jest zawsze na ko�cu






