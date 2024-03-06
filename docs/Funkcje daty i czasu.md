# Funkcje daty i czasu
## Pobieranie fragmentu daty
```sql
SELECT 
	payment_date,
	YEAR(payment_date) AS year_payment_date,
	MONTH(payment_date) AS month_payment_date,
	DAY(payment_date) AS day_payment_date,
	DATEPART(year, payment_date) AS year_payment_date,
	DATEPART(month, payment_date) AS month_payment_date,
	DATEPART(weekday, payment_date) AS weekday_payment_date,
	DATENAME(weekday, payment_date) AS weekdayname_payment_date
FROM payment
```

- **Uwaga:** w celu zwracania prawidłowej wartości `DATEPART(weekday, payment_date)` należy ustawić ustawienia regionalne:
```sql
SET LANGUAGE Polish
```

## Obliczanie różnicy pomiędzy datami

```sql
SELECT 
	payment_date,
	last_update,
 	DATEDIFF(day, payment_date, last_update) AS duration_days,
	DATEDIFF(month, payment_date, last_update) AS duration_months,
	DATEDIFF(year, payment_date, last_update) AS duration_years
FROM payment
```
