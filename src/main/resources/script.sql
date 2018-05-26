SELECT * FROM movies;

-- Default Movies
INSERT INTO movies (title, runtime, genre, imdb_score, rating) VALUES
  ('Howard the Duck', 110, 'Sci-Fi', 4.6, 'PG'),
  ('Lavalantula', 83, 'Horror', 4.7, 'TV-14'),
  ('Starship Troopers', 129, 'Sci-Fi', 7.2, 'PG-13'),
  ('Waltz With Bashir', 90, 'Documentary', 8.0, 'R'),
  ('Spaceballs', 96, 'Comedy', 7.1, 'PG'),
  ('Monsters Inc.', 92, 'Animation', 8.1, 'G');

-- Personal Movies
INSERT INTO movies (title, runtime, genre, imdb_score, rating) VALUES
  ('Hancock', 92, 'Action', 6.4, 'PG-13'),
  ('Pulp Fiction', 154, 'Crime', 8.9, 'R'),
  ('Dope', 103, 'Comedy', 7.2, 'R'),
  ('Avengers: Infinity War', 149, 'Action', 8.8, 'PG-13');

-- All Sci-Fi movies
SELECT title, genre FROM movies WHERE genre='Sci-Fi';

-- All movies with a IMDB score of 6.5 or more
SELECT title, imdb_score FROM movies WHERE imdb_score>=6.5;

-- All PG and G movies that are less than 100 minutes long
SELECT title, runtime, rating FROM movies WHERE runtime<100 AND rating IN ('PG', 'G');

-- Average runtimes of movies with a IMDB score less than 7.5 grouped by genre
SELECT genre, AVG(runtime) AS AVERAGE_RUNTIME FROM movies WHERE imdb_score<7.5 GROUP BY genre;

-- Change Starship Troopers rating to R
UPDATE movies SET rating='R' WHERE title='Starship Troopers';

-- IDs and ratings of each Documentary and Horror film
SELECT id, rating FROM movies WHERE genre IN ('Documentary', 'Horror');

-- Shows minimum, maximum, and average IMDB scores of movies from each rating (only ratings with more than one movie)
SELECT rating, MIN(imdb_score) AS MINIMUM_SCORE, AVG(imdb_score) AS AVERAGE_SCORE, MAX(imdb_score) AS MAXIMUM_SCORE
    FROM movies GROUP BY rating HAVING COUNT(*)>1;

-- Removes all R-rated movies
DELETE FROM movies WHERE rating='R';