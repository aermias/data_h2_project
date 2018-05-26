-- [PEOPLE table] returns rows where BIRTHDAY value is between 1970 and 1987
--   [YEAR() returns year number of a date string]
----  SELECT first_name, last_name, YEAR(birthday) FROM people WHERE birthday >= '1970-07-06' AND birthday<='1987-07-06';

-- [PEOPLE table] return rows where FIRST_NAME is "Thomas", "Raj", or "Sheeri"
----  SELECT first_name, birthday FROM people WHERE first_name='Thomas' OR first_name='Raj' OR first_name='Sheeri';

-- [PEOPLE table] return rows where FIRST_NAME is "Thomas", "Raj", or "Sheeri"
----  SELECT first_name, birthday FROM people WHERE first_name IN ('Noelle', 'Thomas', 'Raj');