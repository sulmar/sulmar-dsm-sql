# Zadanie 1 - Najlepszy sklep

- Wyświetl informację, który sklep (store) generuje najwiecej przychodow z wypożyczeń?


| store_id | total_revenue | 
| ---------- | --------- | 
| ... | ... | 

# Zadanie 2

- Utwórz zapytanie, które wyświetli ilość wypożyczeń i dochód z filmów w podziale na kategorie wiekowe (rating)


| rating | total_rentals | total_revenue | 
| ---------- | --------- | --------- |
| ...        | ...       | ... |

## Rozwiązanie
```sql
select
	film.rating,
	sum(p.amount) as total_revenue,
	count(*) as total_rental
from film
	inner join inventory as i
		on i.film_id = film.film_id
	inner join rental as r
		on r.inventory_id = i.inventory_id
	inner join payment as p
		on p.rental_id = r.rental_id
group by film.rating
```
