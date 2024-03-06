-- # Kolumny wyliczeniowe

-- Operacje arytmetyczne
SELECT 
	title,
	rental_duration,
	rental_rate,
	rental_duration * rental_rate AS rental_amount -- AS = alias kolumny
FROM 
	film

SELECT 
	replacement_cost,
	replacement_cost + 1 AS new_price
FROM film

-- U¿ycie sta³ej
SELECT 
	amount,
	amount * 0.23 AS tax,
	amount * 1.23 AS gross_amount
FROM payment

-- Operacje tekstowe

-- £¹czenie pól tekstowych (konkatenacja) za pomoc¹ +
SELECT 
	first_name + ' ' + last_name AS fullname, 
	email 
FROM 
	customer

-- £¹czenie pól tekstowych (konkatenacja) za pomoca funkcji CONCAT
SELECT
	CONCAT(first_name, ' ', last_name) AS fullname,
	email
FROM
	customer

-- Funkcje tekstowe
SELECT
	first_name,
	email,
	LOWER(first_name) AS normalized_first_name,
	UPPER(email) AS normalized_email,
	LEFT(first_name, 3) AS prefix_first_name,
	RIGHT(first_name, 3) AS suffix_first_name,
	SUBSTRING(first_name, 3, 2) AS middle_first_name,
	CHARINDEX('@', email) AS at_email_position,
	SUBSTRING(email, 1, CHARINDEX('@', email)-1) AS email_account,
	LEN(email) AS length_email
FROM
	customer

-- f(g(x)) 




