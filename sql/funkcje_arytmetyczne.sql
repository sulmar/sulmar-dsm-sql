-- # Funkcje arytmetyczne
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

