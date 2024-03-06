# Dodawanie rekordów

~~~ sql
INSERT INTO actor (first_name, last_name) 
VALUES('John', 'Smith')	
~~~

# Modyfikacja rekordów

~~~ sql
UPDATE customer
	SET active = 0
WHERE
	customerId = 10
~~~
# Usuwanie rekordów

~~~ sql
DELETE FROM customer	
WHERE
	customerId = 10
~~~