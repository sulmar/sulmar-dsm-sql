# Zadanie 1 - Wspólne tytuły filmów

- Wyświetl tytuły filmów, które znajdują się obu wypożyczalniach (store). Ile jest takich filmów?

| title | 
| ---- | 
| ... |
| ... |
| ... | ... |

## Rozwiązanie

```sql
SELECT
  f.title
FROM film AS f
INNER JOIN
    inventory AS i
      ON f.film_id = i.film_id
WHERE i.store_id = 1

INTERSECT
SELECT
   f.title
FROM film AS f
INNER JOIN
   inventory AS i
      ON f.film_id = i.film_id
WHERE i.store_id = 2
```

# Zadanie 2 - Niewypożyczane filmy

- Znajdź filmy, które nigdy nie były wypożyczone

| title | 
| ---- | 
| ... |
| .. |
| ... | 

## Rozwiązanie

```sql
select film_id

from film

except

SELECT distinct

       f.film_id

FROM

       film AS f

INNER JOIN

       inventory AS i

              ON f.film_id = i.film_id

INNER JOIN

rental AS r

ON i.inventory_id = r.inventory_id
```



# Zadanie 3 - Unikaty
- Wyświetl tytuły filmów, które znajdują się tylko w drugiej wypożyczalni (store). Ile jest takich filmów?
