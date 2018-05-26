-- [PEOPLE table] returns rows, converting FIRST_NAME to all uppercase and LAST_NAME to all lowercase characters
----  SELECT UPPER(first_name), LOWER(last_name) FROM people;

-- [PEOPLE table] returns rows, replacing every occurrence of "a" with a "1"
----  SELECT REPLACE(last_name, 'a', '1') FROM people;

-- [PEOPLE table] returns LAST_NAME column
----  SELECT last_name FROM people;

-- [PEOPLE table] inserts a new row with specified values
----  INSERT INTO people (first_name, last_name, mobile) VALUES ('Otto', 'Von Count', '656-6548');

-- [PEOPLE table] returns a row with FIRST_NAME and LAST_NAME values concatenated (wherever LAST_NAME == "Smith")
----  SELECT CONCAT(first_name, last_name) FROM people WHERE last_name = 'Smith';

-- [PEOPLE table] returns a row with a space between FIRST_NAME and LAST_NAME values
----  SELECT CONCAT(first_name, ' ', last_name) FROM people WHERE last_name = 'Smith';

-- [PEOPLE table] returns a row with a separator(" ") in between each value (wherever LAST_NAME == "Smith")
----  SELECT CONCAT_WS(' ',first_name, last_name, mobile) FROM people WHERE last_name= 'Smith';

-- [PEOPLE table] returns first 3 (leftmost) characters and first two (rightmost) characters from HOMENUMBER column
----  SELECT homenumber, LEFT(homenumber, 3), RIGHT(homenumber, 2) FROM homes;

-- [PEOPLE table] returns length of ADDRESS value in bytes, characters
----  SELECT LENGTH(address), CHAR_LENGTH(address) FROM homes;