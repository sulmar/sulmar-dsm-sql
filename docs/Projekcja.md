
# Pobranie rekordów

```sql
SELECT * FROM customer
```

# Wybór kolumn

```sql
SELECT first_name, last_name, email FROM customer
```

# Aliasy kolumn

```sql
SELECT
	first_name AS imie, 
	last_name AS nazwisko, 
	email
FROM
	customer
```

# Pobranie unikalnych wartości

```sql
SELECT DISTINCT rental_duration FROM film
```


