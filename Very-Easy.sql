CREATE DATABASE week_1;

USE week_1;
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
