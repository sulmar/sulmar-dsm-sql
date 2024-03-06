
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

SELECT TOP(20) first_name, last_name FROM actor

-- Pobierz unikalne wartoœci z danej kolumny
SELECT DISTINCT first_name FROM customer 

-- Wyœwietl unikalne imiona aktorów. Ile ich jest?
SELECT DISTINCT first_name FROM actor

-- Aliasy kolumn
SELECT 
	first_name AS imie, 
	last_name AS nazwisko, 
	email AS [adres email] 
FROM customer

-- Wyœwietl aktorów (imiê i nazwisko)
-- | imiê aktora | nazwisko aktora |

SELECT 
	first_name AS [imiê aktora], 
	last_name AS [nazwisko aktora] 
FROM actor

-- Wyœwietl listê 10 filmów 
-- | tytu³ filmu | opis | kategoria |

SELECT TOP(10) 
	[title] AS [tytu³ filmu],
	[description] AS [opis],
	[rating] as [kategoria]
FROM film







