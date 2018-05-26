-- [PEOPLE table] returns rows sorted in ascending order by BIRTHDAY
----  SELECT first_name, birthday FROM people ORDER BY birthday;

-- [PEOPLE table] returns rows sorted in descending order by BIRTHDAY
----  SELECT first_name, birthday FROM people ORDER BY birthday DESC;

-- [PEOPLE table] returns rows sorted in ascending order by LAST_NAME (FIRST_NAME if needed)
----  SELECT first_name, last_name FROM people ORDER BY last_name, first_name;

-- [PEOPLE table] returns top 3 rows sorted in descending order by BIRTHDAY
----  SELECT first_name, birthday FROM people ORDER BY birthday DESC LIMIT 3;

-- [PEOPLE table] MONTHNAME(Date) returns the actual month name MONTH(Date) returns the month number
----  SELECT first_name, MONTHNAME(birthday) as mon, birthday FROM people ORDER BY MONTH(birthday);

-- [PEOPLE table] returns LAST_NAME and amount of repeated LAST_NAME values
----  SELECT last_name, COUNT(*) FROM  people GROUP BY last_name;

-- [PEOPLE table] returns LAST_NAME and amount of repeated LAST_NAME values NULL values are last
----  SELECT last_name, COUNT(*) FROM  people GROUP BY last_name ORDER BY NULL;

-- [PEOPLE table] inserts specified values
----  INSERT INTO people (first_name, last_name, birthday, home_id)
----    VALUES ('John', 'Smith', '1998-04-07', 4),
----      ('Maya', 'Wasserman' , NULL, 4),
----      ('Paul', 'Thompson', '1996-05-27', 1);

-- [PEOPLE table] deletes the row where FIRST_NAME is "Maya"
----  DELETE FROM people WHERE first_name='Maya';

-- [PEOPLE table] returns all rows
----  SELECT * FROM people;