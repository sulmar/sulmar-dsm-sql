# Podstawy języka SQL

## Wprowadzenie

Witaj w repozytorium z materiałami do szkolenia **Podstawy języka SQL**.

Do rozpoczęcia tego kursu potrzebujesz następujących rzeczy:

1. Sklonuj repozytorium Git
```
git clone https://github.com/sulmar/sulmar-dsm-sql
```
2. Utwórz bazę danych
```
sqlcmd -S sql2 -d master -U your_username -P your_password -i scripts/sql-server-sakila-schema.sql
```
3. Załadowuj przykładowane dane
```
sqlcmd -S (localdb)\MSSQLLocalDB -d sakila -E -i sql/sql-server-sakila-insert-data.sql
```

