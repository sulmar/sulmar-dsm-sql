
-- Wyb�r bazy danych
USE sakila

-- SELECT {kolumny} FROM {schemat.tabela}

-- SELECT first_name, last_name, email, active FROM dbo.customer 

-- SELECT {kolumny} FROM {tabela} schemat jest domy�lny (dbo)

SELECT first_name, last_name, email, active FROM customer 

-- Wy�wietl list� aktor�w (imi� i nazwisko)
SELECT first_name, last_name FROM dbo.actor

-- Wy�wietl wszystkie kolumny
SELECT * FROM customer

-- Ograniczenie ilo�ci rekord�w
SELECT TOP(100) * FROM customer

-- Wy�wietl 20 aktor�w (imi� i nazwisko)
-- | first_name | last_name |




