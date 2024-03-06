## Zadanie
- Utwórz listę klientów w następujący sposób:

| capitalized_first_name | capitalized_last_name | email_normalized | domain |
| ---- | ---- | ---- | ---- |
| Mary | Smith | mary.smith@sakilacustomer.org | sakilacustomer.org |
| Patricia | Johnson | patricia.johnson@sakilacustomer.org | sakilacustomer.org |
| Linda | Williams | linda.williams@sakilacustomer.org | sakilacustomer.org |
| ... | ... |  |  |


### Rozwiązanie
- z użyciem `+`
``` sql
SELECT
   UPPER(LEFT(last_name, 1)) + LOWER(SUBSTRING(last_name, 2, LEN(last_name))) AS capitalized_last_name,
   UPPER(LEFT(first_name, 1)) + LOWER(SUBSTRING(first_name, 2, LEN(first_name))) AS capitalized_first_name,
   LOWER(email) AS email_normalized,
   SUBSTRING(email, CHARINDEX('@', email), LEN(email)) AS domian
FROM
   customer
```

- z użyciem funkcji `CONCAT`
```sql
SELECT
   CONCAT(UPPER(LEFT(last_name, 1)), LOWER(SUBSTRING(last_name, 2, LEN(last_name)))) AS capitalized_last_name,
   CONCAT(UPPER(LEFT(first_name, 1)), LOWER(SUBSTRING(first_name, 2, LEN(first_name)))) AS capitalized_first_name,
   LOWER(email) as email_normalized,
   SUBSTRING(email, CHARINDEX('@', email), LEN(email)) AS domian
FROM
   customer
```
