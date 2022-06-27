INSERT INTO movies (Title, Release_date, Rating)
VALUES ("The Matrix", "1999-03-31", "R"),
	   ("Alpha Dog", "2006-01-27", "R"),
       ("Friday", "1995-04-26", "R"),
       ("The Fifth Element", "1997-05-09", "R"),
       ("Twister", "1996-05-10", "PG-13"),
       ("Scream", "1996-12-20", "R"),
       ("Ghostbusters", "1984-06-08", "PG"),
       ("Deadpool", "2016-02-12", "R"),
       ("Shrek", "2001-05-18", "PG"),
       ("Brave", "2012-06-22", "PG");
       
SELECT * FROM movies;

-- Medium
-- Pull movies that start "s" and arrange in date order
SELECT * FROM movies 
WHERE Title LIKE '%S%' ORDER BY Release_date ASC;

ALTER TABLE movies
ADD COLUMN first_name VARCHAR(20),
ADD COLUMN last_name VARCHAR(20);

UPDATE movies SET first_name = "Wachowski", last_name = "Brothers" WHERE Title = "The Matrix";
UPDATE movies SET first_name = "Nick", last_name = "Cassavetes" WHERE Title = "Alpha Dog";
UPDATE movies SET first_name = "F. Gary", last_name = "Gary" WHERE Title = "Friday";
UPDATE movies SET first_name = "Luc", last_name = "Besson" WHERE Title = "The Fifth Element";
UPDATE movies SET first_name = "Jan de", last_name = "Bont" WHERE Title = "Twister";
UPDATE movies SET first_name = "Wes", last_name = "Craven" WHERE Title = "Scream";
UPDATE movies SET first_name = "Ivan", last_name = "Reitman" WHERE Title = "Ghostbusters";
UPDATE movies SET first_name = "Tim", last_name = "Miller" WHERE Title = "Deadpool";
UPDATE movies SET first_name = "Andrew", last_name = "Adamson" WHERE Title = "Shrek";
UPDATE movies SET first_name = "Mark", last_name = "Andrews" WHERE Title = "Brave";

-- Put directors together
SELECT concat(first_name, " ", last_name) AS Directors FROM movies;
-- A-Z last names directors
SELECT concat(first_name, " ", last_name) AS Directors FROM movies ORDER BY last_name ASC;
-- Whole movie list same as previous query order
SELECT Title, Release_date, Rating, concat(first_name, " ", last_name) AS Directors FROM movies ORDER BY last_name ASC;


SELECT Title, Release_date, Rating, concat(first_name, " ", last_name) AS Directors FROM movies WHERE last_name NOT LIKE '%R' AND last_name NOT LIKE '%Z' ORDER BY last_name ASC; 

SELECT Title, Release_date, Rating, concat(first_name, " ", last_name) AS Directors FROM movies WHERE last_name NOT LIKE '%R' AND last_name NOT LIKE '%Z' ORDER BY last_name ASC LIMIT 3;
