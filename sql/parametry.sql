-- Definiowanie parametrów
DECLARE @customer_id int
SET @customer_id = 1

SELECT * FROM customer WHERE customer_id = @customer_id

-- Wiele parametrów

DECLARE @from_rental_date datetime
DECLARE @to_rental_date datetime

SET @from_rental_date = '2005-05-01'
SET @to_rental_date = '2005-05-30'

SELECT * 
FROM rental 
WHERE 
	rental_date BETWEEN @from_rental_date AND @to_rental_date

-- Trick - Wyszukiwanie klientów jeœli zostanie pominiêty identyfikator
DECLARE @customer_id int
SET @customer_id = NULL

SELECT * FROM customer 
WHERE 
  customer_id = @customer_id
  OR @customer_id IS NULL


