-- Question 1 and 2
CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  age INT,
  height INT,
  city VARCHAR(100),
  favorite_color VARCHAR(100)
 );

-- Question 3 add 5 people to the table
INSERT INTO person (name, age, height, city, favorite_color)
	VALUES('Carter', 30, 150, 'Dallas', 'Blue');
  
INSERT INTO person (name, age, height, city, favorite_color)
	VALUES('Reese', 35, 180, 'Neverland', 'Red');
  
INSERT INTO person (name, age, height, city, favorite_color)
	VALUES('Bob', 79, 210, 'Denver', 'Pink');
  
INSERT INTO person (name, age, height, city, favorite_color)
	VALUES('Angela', 28, 130, 'Austin', 'Black');
  
INSERT INTO person (name, age, height, city, favorite_color)
	VALUES('Sharon', 24, 140, 'San Fransisco', 'Yellow');


-- Question 5 List all the people in the person table by height from tallest to shortest
SELECT * FROM person
ORDER BY height DESC;

-- Question 6 List all the people table from shortest to tallest
SELECT * FROM person
ORDER BY height;

-- Qestion 7 List all people in person table by age from oldest to youngest
SELECT * FROM person
ORDER BY age DESC;

-- Question 8 List all people in person able older than age 20
SELECT * FROM person
WHERE age > 20;

-- Question 9 List people whos age is 18
SELECT * FROM person
WHERE age = 18;

-- #9
SELECT * FROM person
WHERE age < 20 OR age > 30;

-- #10
SELECT * FROM person
WHERE age != 27;

-- #12
SELECT * FROM person
WHERE favorite_color != 'Red';

-- #13
SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

-- #14
SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

-- #15
SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

-- 16
SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple');