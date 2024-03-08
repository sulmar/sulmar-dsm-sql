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

-- Wyœwietl filmy, które znajduj¹ siê w wybranym sklepie (store)

declare @store_id int
set @store_id = 1

 
select DISTINCT
	film.title, 	
	store.store_id
from store
	inner join inventory as i
		on store.store_id = i.store_id
	inner join film
		on film.film_id = i.film_id
	where 
		store.store_id = @store_id

-- Wyœwietl identyfikatory, datê p³atnoœci i wartoœæ dla wybranego okresu
-- | payment_id | payment_date | amount |

declare @from_payment_date datetime
declare @to_payment_date datetime

set @from_payment_date = '2005-07-01'
set @to_payment_date ='2005-07-06'

select
	payment_id,
	payment_date,
	amount
from payment
where payment_date BETWEEN @from_payment_date AND @to_payment_date
order by amount desc

