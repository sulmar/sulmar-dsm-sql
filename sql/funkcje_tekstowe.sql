-- # Funkcje tekstowe

SELECT
	first_name,
	email,
	LOWER(first_name) AS normalized_first_name,
	UPPER(email) AS normalized_email,
	LEFT(first_name, 3) AS prefix_first_name,
	RIGHT(first_name, 3) AS suffix_first_name,
	SUBSTRING(first_name, 3, 2) AS middle_first_name,
	CHARINDEX('@', email) AS at_email_position,
	SUBSTRING(email, 1, CHARINDEX('@', email)-1) AS email_account,
	LEN(email) AS length_email
FROM
	customer

-- f(g(x)) 




