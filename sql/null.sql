-- NULL - wartoœæ nieokreœlona

SELECT  rental_date, return_date FROM rental

-- 2 + 2    = 4
-- 2 + 0    = 2
-- 2 + NULL = NULL
-- NULL * NULL = NULL

SELECT 2 + 2
SELECT 2 + 0
SELECT 2 + NULL
SELECT NULL * NULL

-- Operator IS
-- Umo¿liwia sprawdzenie czy wartoœæ jest NULL 
SELECT		
	rental_date, 
	return_date 
FROM rental
WHERE return_date IS NULL

SELECT	
	COUNT(*) as not_yet_returned
FROM rental
WHERE return_date IS NULL

-- Operator IS NOT NULL

SELECT		
	rental_date, 
	return_date 
FROM rental
WHERE return_date IS NOT NULL

SELECT		
	COUNT(*) as yet_returned
FROM rental
WHERE return_date IS NOT NULL

-- Funkcja ISNULL - s³u¿y do zamiany wartoœci NULL na wartoœæ zastêpcz¹

SELECT 
	rental_date,
	ISNULL(return_date, '2024-03-08')
FROM 
	rental
WHERE
	return_date IS NULL








SELECT * FROM film

UPDATE film 
SET description = NULL
WHERE film_id = 1



-- Transakcje
BEGIN TRAN

UPDATE film 
SET title = NULL
WHERE film_id = 3

ROLLBACK




