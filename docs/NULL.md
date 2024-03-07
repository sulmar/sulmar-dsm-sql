W bazach danych, `NULL` jest specjalną wartością, która oznacza brak wartości lub brak danych w danym polu. Może być używane w różnych kontekstach, takich jak:

1. **Brak wartości**: NULL może być używane, gdy nie ma żadnej wartości dostępnej do zapisania w danym polu. Na przykład, jeśli nie znamy daty urodzenia użytkownika, możemy zapisywać NULL.
    
2. **Brak danych**: Jest używane, gdy dane nie zostały jeszcze wprowadzone lub są nieznane. Na przykład, jeśli nie mamy jeszcze informacji o numerze telefonu użytkownika, możemy użyć NULL.
    
3. **Oznaczenie nieistniejącej wartości**: Czasami wartość NULL może być używana do oznaczenia nieobecności wartości, co odróżnia ją od zera lub pustego ciągu znaków.

# Operator IS NULL

Operator `IS NULL` w języku SQL służy do sprawdzania, czy wartość w danym polu w bazie danych jest pusta lub nieustawiona, czyli NULL. Gdy używamy operatora IS NULL, sprawdzamy, czy określone pole nie ma żadnej wartości.

- Przykład zapytania SQL z użyciem `IS NULL`

```sql
SELECT * FROM rental where return_date IS NULL
```

To zapytanie zwróci wszystkie wypożyczenia, które nie zostały jeszcze zwrócone, ponieważ sprawdza, czy pole `return_date` ma wartość NULL w tabeli `rental`.

- Jeśli chcemy pobrać niepuste wartości to musimy użyć negacji.
```sql
SELECT * FROM rental where return_date IS NOT NULL
```

# Funkcja ISNULL

Funkcja `ISNULL` zwraca wartość alternatywną, jeśli wartość danego wyrażenia jest NULL. Jednakże, nie jest to to samo co operator `IS NULL`.

```sql
SELECT ISNULL(column_name, 'Replacement Value') AS column_alias
FROM table_name;
```