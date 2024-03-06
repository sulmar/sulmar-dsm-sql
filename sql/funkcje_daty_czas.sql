-- Funkcje daty i czasu

SET LANGUAGE English

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

SET LANGUAGE Polish

-- Obliczanie ró¿nicy pomiêdzy datami
SELECT 
	payment_date,
	last_update,
 	DATEDIFF(day, payment_date, last_update) AS duration_days,
	DATEDIFF(month, payment_date, last_update) AS duration_months,
	DATEDIFF(year, payment_date, last_update) AS duration_years
FROM payment

-- Wyœwietl p³atnoœci, których duration jest wiêkszy ni¿ 200 dni
SELECT 
	payment_date, 
	last_update,
	DATEDIFF(day, payment_date, last_update) AS duration_days
FROM 
	payment
WHERE
	DATEDIFF(day, payment_date, last_update) > 200

-- Wyœwietl p³atnoœci, których duration by³ krótszy ni¿ 1 rok
SELECT
	payment_date,
	last_update,
	DATEDIFF(year, payment_date, last_update) AS duration_years
FROM
	payment
WHERE
	DATEDIFF(year, payment_date, last_update) < 1



