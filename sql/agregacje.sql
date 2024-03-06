-- Funkcje agreguj�ce


-- Ilo�� rekord�w 
SELECT 
	COUNT(*) AS customer_count
FROM 
	customer

-- Suma kolumny
SELECT SUM(amount) AS total_amount FROM payment

-- Warto�ci minimum i maksimum
SELECT 
	MIN(amount) AS min_amount,
	MAX(amount) AS max_amount
FROM 
	payment

-- �rednia
SELECT AVG(amount) AS avg_amount
FROM payment

-- Oblicz sum� p�atno�ci za okres lipiec 2005 rok
SELECT 
	SUM(amount) AS total_amount
FROM 
	payment
WHERE 
	payment_date BETWEEN '2005-07-01 00:00:00' AND '2005-07-31 23:59:59'

SELECT 
	SUM(amount) AS total_amount
FROM 
	payment
WHERE 
	year(payment_date) = 2005 AND month(payment_date) = 7

-- Zadanie: Oblicz ile jest ��cznie film�w w kategoriach PG i R

