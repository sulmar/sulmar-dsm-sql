
/*
	Rating	Opis
	NC-17	od 17 lat
	PG		BO z rodzicami
	PG-13	od 13 lat
	G		BO
	R		dla doros³ych
*/

-- Funkcja warunkowa

SELECT 
	title, 
	rating,
	CASE rating
		WHEN 'NC-17' THEN 'od 17 lat'
		WHEN 'PG'	 THEN 'BO z rodzicami'
		WHEN 'PG-13' THEN 'od 13 lat'
		WHEN 'G'	 THEN  'BO'
		WHEN 'R'	 THEN  'dla doros³ych'	
	END AS rating_pl
FROM 
	film


SELECT 
	first_name, 
	last_name,  
	CASE active	
		WHEN 1 THEN 'Aktywny'
		WHEN 0 THEN 'Nieaktywny'
	END AS active
FROM customer

-- Wyœwietl dzieñ tygodnia w jêzyku polskim w którym wypo¿yczono film 
-- bez u¿ycia dodatkowej funkcji

SELECT		
	CASE datepart(weekday, rental_date)
		WHEN 1 THEN 'PONIEDZIA£EK'
		WHEN 2 THEN 'WTOREK'
		WHEN 3 THEN 'ŒRODA'
		WHEN 4 THEN 'CZWARTEK'
		WHEN 5 THEN 'PIATEK'
		WHEN 6 THEN 'SOBOTA'
		WHEN 7 THEN 'NIEDZIELA'
	end as dni_tygodnia,
	count(*) as ile_wypo¿yczono
FROM rental
GROUP BY datepart(weekday, rental_date)
ORDER BY ile_wypo¿yczono desc

set language polish