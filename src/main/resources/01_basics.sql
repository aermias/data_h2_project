-- [PEOPLE table] returns all rows
----  SELECT * FROM people;

-- [PEOPLE table] changes (ID) 1's FIRST_NAME to "Tony"
----  UPDATE people SET first_name = 'Tony' WHERE id = 1;

-- [PEOPLE table] changes (LAST_NAME) Smith's MOBILE to "152-9854"
----  UPDATE people SET mobile = '152-9854' WHERE last_name = 'Smith';

-- [PEOPLE table] changes (LAST_NAME, ID) Smith, 4's BIRTHDAY to "1955-01-25"
----  UPDATE people SET birthday = '1955-01-25' WHERE last_name = 'Smith' AND id = 4;

-- [PEOPLE table] changes (FIRST_NAME) Nolle's|Raj's MOBILE, LAST_NAME to "333-3333", "Johnson"
----  UPDATE people SET mobile = '333-3333', last_name = 'Johnson' WHERE first_name = 'Noelle' OR first_name = 'Raj';

-- [PEOPLE table] returns all rows
----  SELECT * FROM people;

-- [HOMES table] returns a row with the amount of rows that have a value in HOMENUMBER column
----  SELECT COUNT(homenumber) FROM homes;

-- [HOMES table] returns rows where ID == 1
----  SELECT homenumber FROM homes WHERE id = 1;

-- [HOMES table] returns a row with the amount of rows that have a value in any column
----  SELECT COUNT(*) FROM homes;

-- [PEOPLE table] returns a row with the amount of rows that have non-repeating values in LAST_NAME column
----  SELECT COUNT(DISTINCT last_name) FROM people;

-- [PEOPLE table] returns a row with two columns (the sum of all ID values, the average of ID values)
----  SELECT SUM(id), AVG(id) FROM people;

-- [PEOPLE table] returns a row with two columns (sum, avg)
----  SELECT SUM(id) AS sum, AVG(id) AS avg FROM people;

-- [PEOPLE table] returns row with lowest BIRTHDAY value
----  SELECT MIN(birthday) FROM people;