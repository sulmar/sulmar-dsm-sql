
# ROW_NUMBER

- Funkcja `ROW_NUMBER` umożliwia określenie liczby porządkowej na podstawie pola wskazanego w klauzuli `ORDER BY`
```sql

SELECT
   ROW_NUMBER() OVER(ORDER BY customer_id) AS [row_number],
   customer_id,
   first_name,
   last_name,
   store_id
FROM
    customer
```


- Dzięki zastosowaniu dodatkowej klauzuli `PARTITION BY` możemy utworzyć liczbę porządkową w ramach danego podziału
```sql
SELECT
   store_id,
   ROW_NUMBER() OVER(PARTITION BY store_id ORDER BY customer_id) AS [row_number],
   customer_id,
   first_name,
   last_name
   
FROM
    customer
```

# RANK
- Funkcja `RANK`umożliwia obliczenie rankingu

```sql
SELECT
    payment_id,
    customer_id,
    amount,
    payment_date,
    RANK() OVER (ORDER BY amount DESC) AS payment_rank_within_customer
FROM
    payment;

```


```sql
SELECT
    payment_id,
    customer_id,
    amount,
    payment_date,
    RANK() OVER (PARTITION BY customer_id ORDER BY amount DESC) AS payment_rank_within_customer
FROM
    payment;

```

# DENSE_RANK


```sql
SELECT
    payment_id,
    customer_id,
    amount,
    payment_date,
    DENSE_RANK() OVER (ORDER BY amount DESC) AS payment_rank_within_customer
FROM
    payment;

```


```sql
SELECT
    payment_id,
    customer_id,
    amount,
    payment_date,
    DENSE_RANK() OVER (PARTITION BY customer_id ORDER BY amount DESC) AS payment_rank_within_customer
FROM
    payment;

```

# LAG

Funkcja `LAG` umożliwia dostęp do wartości z poprzedniego rekordu w tym samym zestawie wyników.

```sql

SELECT
    customer_id,
    payment_id,
    amount,
    payment_date,
    LAG(amount) OVER (PARTITION BY customer_id ORDER BY payment_date) AS previous_payment_amount
FROM
    payment;
```

# LEAD

Funkcja `LEAD` jest przeciwieństwem funkcji LAG(). Służy do dostępu do danych z następnego wiersza w tym samym zestawie wyników

```sql
SELECT
    customer_id,
    payment_id,
    amount,
    payment_date,
    LEAD(amount) OVER (PARTITION BY customer_id ORDER BY payment_date) AS next_payment_amount
FROM
    payment;
```


# FIRST_VALUE

Funkcja `FIRST_VALUE` służy do pobierania wartości z pierwszego wiersza w grupie.

```sql
SELECT
    customer_id,
    payment_id,
    amount,
    payment_date,
    FIRST_VALUE(amount) OVER (PARTITION BY customer_id ORDER BY payment_date) AS first_payment_amount
FROM
    payment;

```