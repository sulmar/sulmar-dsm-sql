
-- Wybór bazy danych
USE sakila

-- SELECT {kolumny} FROM {schemat.tabela}

-- SELECT first_name, last_name, email, active FROM dbo.customer 

-- SELECT {kolumny} FROM {tabela} schemat jest domyœlny (dbo)

SELECT first_name, last_name, email, active FROM customer 

-- Wyœwietl listê aktorów (imiê i nazwisko)
SELECT first_name, last_name FROM dbo.actor

-- Wyœwietl wszystkie kolumny
SELECT * FROM customer

-- Ograniczenie iloœci rekordów
SELECT TOP(100) * FROM customer

-- Wyœwietl 20 aktorów (imiê i nazwisko)
-- | first_name | last_name |




