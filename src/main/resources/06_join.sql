-- [PEOPLE table] inserts specified values
----  INSERT INTO people (first_name, last_name, birthday) VALUES ('Eli', 'Kramer', '1984-01-15');

-- [PEOPLE table] returns all rows
----  SELECT * FROM people;

-- [HOMES table] returns all rows
----  SELECT * FROM homes;

-- [PEOPLE, HOMES tables] returns FIRST_NAME(p) AND ADDRESS(h) as one row where HOME_ID(p) and ID(h) are the same
----  SELECT p.first_name, h.address FROM people p INNER JOIN homes h on (p.home_id = h.id);

-- [PEOPLE, HOMES tables] returns FIRST_NAME(p) and LAST_NAME(p) as one row where HOME_ID(p) and ID(h) are both 1
----  SELECT first_name, last_name FROM people p INNER JOIN homes h on (p.home_id = h.id) WHERE p.HOME_ID = 1;

-- [PEOPLE, HOMES tables] returns all rows(p), ADDRESS(h), and HOMENUMBER(h) where HOME_ID(p) and ID(h) are the same and when FIRST_NAME contains an "e"
----  SELECT p.*, h.address, h.homenumber FROM people p INNER JOIN homes h on (p.home_id = h.id) WHERE p.first_name  LIKE '%e%';