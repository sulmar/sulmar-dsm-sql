
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

SELECT TOP(20) first_name, last_name FROM actor

-- Pobierz unikalne warto�ci z danej kolumny
SELECT DISTINCT first_name FROM customer 

-- Wy�wietl unikalne imiona aktor�w. Ile ich jest?
SELECT DISTINCT first_name FROM actor

-- Aliasy kolumn
SELECT 
	first_name AS imie, 
	last_name AS nazwisko, 
	email AS [adres email] 
FROM customer

-- Wy�wietl aktor�w (imi� i nazwisko)
-- | imi� aktora | nazwisko aktora |

SELECT 
	first_name AS [imi� aktora], 
	last_name AS [nazwisko aktora] 
FROM actor

-- Wy�wietl list� 10 film�w 
-- | tytu� filmu | opis | kategoria |

SELECT TOP(10) 
	[title] AS [tytu� filmu],
	[description] AS [opis],
	[rating] as [kategoria]
FROM film







