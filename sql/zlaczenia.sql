
SELECT 
	first_name, 
	last_name, 	
	address.address,
	address.postal_code
FROM 
	customer
INNER JOIN -- typ z��czenia
	address 
		ON customer.address_id = address.address_id -- warunek z��czenia