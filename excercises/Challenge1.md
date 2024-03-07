# Zadanie 1 - Krótkie filmy o kotach i psach dla dzieci

- Wyszukaj filmy, w których opisie jest `cat` lub `dog` z kategorii `PG` i `G` i nie trwają dłużej niż 1 godz. 


| title | description | length | rating |
| ---------- | --------- | ---------- | --------- | 
| ... | ... | ...| ... | ... | 


## Rozwiązanie
```sql
SELECT 
  title,
  [description],
  [length],
  rating
FROM 
  film
WHERE 
  ([description] like '%cat%' OR [description] like '%dog%') 
  AND (rating = 'G' OR rating = 'PG')
  AND [length] <= 60
```
  
# Zadanie 2 - Aktorki
- Oblicz ile jest aktorek zakładając, że ich imię kończy się na `A`

| actor_count |
| ---------- |
| ... | 

## Rozwiązanie
```sql
SELECT
	count(first_name) as actor_count
FROM 
	actor
WHERE 
	first_name LIKE '%A'
```
