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

-- Medium
-- Pull movies that start "s" and arrange in date order
SELECT * FROM movies 
WHERE Title LIKE '%S%' ORDER BY Release_date ASC;

