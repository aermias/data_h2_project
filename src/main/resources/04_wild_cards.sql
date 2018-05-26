-- [PEOPLE table] returns rows where last letter in FIRST_NAME is "e"
----  SELECT first_name FROM people WHERE RIGHT(first_name, 1)='e';

-- [PEOPLE table] returns rows where the last letter of FIRST_NAME is "j"
----  SELECT first_name FROM people WHERE first_name LIKE '%j';

-- [PEOPLE table] returns rows where FIRST_NAME contains an "o"
----  SELECT first_name FROM people WHERE first_name LIKE '%o%';

-- [PEOPLE table] returns rows where FIRST_NAME does not contain an "o"
----  SELECT first_name FROM people WHERE first_name NOT LIKE '%o%';

-- [PEOPLE table] returns total amount of rows
----  SELECT COUNT(*) FROM people;

-- [PEOPLE table] groups rows with similar LAST_NAME values and returns the LAST_NAME and number of repeats
----  SELECT last_name, COUNT(*) FROM people GROUP BY last_name;

-- [PEOPLE table] groups rows with similar LAST_NAME values and concatenates the MOBILE values (with ",")
----  SELECT last_name, GROUP_CONCAT(mobile) FROM people GROUP BY last_name;

-- [PEOPLE table] groups rows with similar LAST_NAME values and concatenates the MOBILE values (with " and ")
----  SELECT last_name, GROUP_CONCAT(mobile SEPARATOR ' and ') FROM people GROUP BY last_name;

-- [PEOPLE table] returns only groups rows with similar LAST_NAME values and concatenates the MOBILE values (with " and ")
----  SELECT last_name, GROUP_CONCAT(mobile SEPARATOR ' and ') FROM people GROUP BY last_name  HAVING COUNT(*)>1;

-- [PEOPLE table] returns only groups rows with similar LAST_NAME values and concatenates the MOBILE values (with " and ") where LAST_NAME isn't Cabral
----  SELECT last_name, GROUP_CONCAT(mobile SEPARATOR ' and ') FROM people WHERE last_name != 'Cabral' GROUP BY last_name  HAVING COUNT(*)>1;