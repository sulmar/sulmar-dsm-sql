
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


