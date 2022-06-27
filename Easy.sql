
CREATE DATABASE sqlchallenge;

USE sqlchallenge;
-- Very Easy
CREATE TABLE cars (
make VARCHAR(20),
model VARCHAR(20),
make_year INT 
);

INSERT INTO cars (make, model, make_year)
VALUES ("Mazda", "3", 2012),
	   ("Subaru", "WRX", 2015),
       ("Honda", "Civic", 1996);
       
-- New query for extra cars
INSERT INTO cars (make, model, make_year)
VALUES ('Hyundai', 'Veloster', 2021),
	   ('Tesla', 'Model 3', 2020);
       
SELECT * FROM cars;

-- Easy
CREATE TABLE favorite_books (
Title VARCHAR(20),
Publish_date DATE,
Author VARCHAR(20)
);

ALTER TABLE favorite_books MODIFY Publish_date YEAR;

INSERT INTO favorite_books (Title, Publish_date, Author)
VALUES ('Point Blank', 2002, 'Anthony Horowitz'),
	   ('Stormbreaker', 2000, 'Anthony Horowitz'),
       ('The Hobbit', 1937, 'J. R. R. Tolkien'),
       ('The Guitar Grimoire', 1995, 'Adam Kadmon'),
       ('Grendal', 1971, 'John Gardner');
       
INSERT INTO favorite_books (Title, Publish_date, Author)
VALUES ('Berserk', 1997, 'Hakusensha'),
	   ('Layers of fear', 2017, 'Junji Ito');
       
-- Delete the oldest book
SET SQL_SAFE_UPDATES = 0;
DELETE FROM favorite_books
WHERE Title = "The Hobbit";

-- The sum of all books
SELECT COUNT(Title) FROM favorite_books;


-- Medium
SELECT * FROM favorite_books;

CREATE TABLE movies (
Title VARCHAR(20),
Release_date DATE,
Rating VARCHAR(20)
);

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

SELECT * FROM movies 
WHERE Title LIKE '%S%' ORDER BY Release_date ASC;

-- Hard

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


INSERT INTO cars (make, model, make_year)
VALUES ('Jeep', 'Wrangler', 2015), ('Nissan', 'Altima', 2005), ('Ford', 'Explorer', 1993);

SELECT * FROM cars;

ALTER TABLE cars
ADD COLUMN price INT,
ADD COLUMN color VARCHAR(20);

UPDATE cars SET price = 11000, color = "Blue" WHERE make = "Mazda";
UPDATE cars SET price = 30000, color = "Black" WHERE make = "Subaru";
UPDATE cars SET price = 10000, color = "Grey" WHERE make = "Honda";
UPDATE cars SET price = 23000, color = "Red" WHERE make = "Hyundai";
UPDATE cars SET price = 30000, color = "White" WHERE make = "Tesla";
UPDATE cars SET price = 20000, color = "Black" WHERE make = "Jeep";
UPDATE cars SET price = 41000, color = "Red" WHERE make = "Nissan";
UPDATE cars SET price = 2000, color = "Green" WHERE make = "Ford";

SELECT concat(make, " ", model) AS make_model FROM cars;

SELECT make, COUNT(make) AS same_model FROM cars GROUP BY make;

INSERT INTO cars (make, model, make_year, price, color)
VALUES("Honda", "Accord", 2004, 20000, "blue");

