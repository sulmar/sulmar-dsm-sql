# Zadanie 6 - Kategorie filmowe

- Wyświetl zestawienie ile mamy filmów w poszczególnych kategoriach filmowych:

| category_name | quantity |
| ---- | ---- |
| Action | 64 |
| Animation | 66 |
| Children | 60 |
| ... | ... |


# Zadanie - Dni tygodnia

- Wyświetl zestawienie, które zaprezentuje 3 dni tygodnia, w których najczęściej wypożyczane są filmy:

| rental_weekname | quantity |
| ---- | ---- |
| wtorek | 2463 |
| niedziela | 2320 |
| sobota | 2311 |


## Rozwiązanie

```sql

SET LANGUAGE Polish

SELECT TOP(3)
	DATENAME(WEEKDAY, rental_date) as rental_weekname,
	COUNT(*) as qunatity
FROM
	rental
GROUP BY DATENAME(WEEKDAY,rental_date)
ORDER BY rental_weekname desc
```

# Zadanie - Pracowici aktorzy

- Znajdź aktorów, którzy zagrali więcej niż w 30 filmach

| actor_id | actor_first_name | actor_last_name | film_count |
| ---- | ---- | ---- | ---- |
| 1 | John | Smith | 3 |
| 2 | Brat | Pit | 5 |
| ... | ... | ... | ... |

## Zadanie - Bogate kategorie

- Wyświetl tylko takie kategorie filmowe, w których mamy powyżej 70 filmów

| category_name | quantity |
| ---- | ---- |
| Foreign | 73 |
| Sports | 74 |
