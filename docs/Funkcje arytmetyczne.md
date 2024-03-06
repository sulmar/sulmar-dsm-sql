# Funkcje arytmetyczne

```sql
SELECT 
	title,
	rental_duration,
	rental_rate,
	rental_duration * rental_rate AS rental_amount -- AS = alias kolumny
FROM 
	film
```

```sql
SELECT 
	replacement_cost,
	replacement_cost + 1 AS new_price
FROM film
```

- Użycie stałej
```sql
SELECT 
	amount,
	amount * 0.23 AS tax,
	amount * 1.23 AS gross_amount
FROM payment
```
