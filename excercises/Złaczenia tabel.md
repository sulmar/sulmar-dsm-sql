# Zadanie 1

- Wyświetl płatności w następujący sposób:

| payment_id | customer_full_name | stuff_full_name | payment_date | amount |
| ---- | ---- | ---- | ---- | ---- |
| 1 | Mary Smith | Mike Hillyer | 2005-05-25 11:30:37.000 | 2.99 |
| 2 | Patricia Johnson | Mike Hillyer  | 2005-05-28 10:35:23.000 | 0.99 |
| 3 | Linda Williams | Jon Stephens | 2005-06-15 00:54:12.000 | 5.99 |
| ... | ... | ... | ... | ... |

# Zadanie 2

- Wyświetl klientów tylko z Polski

| customer_id | customer_full_name | city | country |
| ---- | ---- | ---- | ---- |
| 1 | Mary Smith | Bydgoszcz | Poland |
| 2 | Patricia Johnson | Czestochowa | Poland |
| 3 | Linda Williams | Jastrzebie-Zdrj | Poland |
| ... | ... | ... | ... |


# Zadanie 3
- Wyświetl tytuły filmów i rok produkcji w których zagrał `HOPKINS`

| title | release_year |
| ---- | ---- |
| ... | ... | 

## Rozwiązanie
```sql
SELECT
	film.title,
	release_year
FROM
	film
	INNER JOIN film_actor
		ON film.film_id = film_actor.film_id
	INNER JOIN actor
		ON film_actor.actor_id = actor.actor_id
WHERE last_name = 'HOPKINS'
```

# Zadanie 4
- Wyświetl aktorów, którzy zagrali w filmach o dinozurach (ang _DINOSAUR_).

| actor_full_name | title | release_year | description |
| ---- | ---- | ---- | ---- |
| ... | ... | ... | ... |



# Zadanie 5

- Wyświetl informacje o wypożyczonych filmach w styczniu (w dowolnym roku)

| rental_id | rental_date | customer_full_name | film_title | staff_full_name |
| ---- | ---- | ---- | ---- | ---- |
| ... | ... | ... | ... | ... |
