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

SELECT * FROM favorite_books;
